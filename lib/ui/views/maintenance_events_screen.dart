import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/maintenance_events_screen_model.dart';
import 'detailed_machine_events_screen.dart';

class MaintenanceEventsScreen extends StatefulWidget {
  static const String id = 'maintenance_events_screen';

  const MaintenanceEventsScreen({super.key});

  @override
  State<MaintenanceEventsScreen> createState() => _MaintenanceEventsScreenState();
}

class _MaintenanceEventsScreenState extends State<MaintenanceEventsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pages = [
      machineInfoWidget(),
      //const Center(child: Text('All Events')),
      const Center(child: Text('Pending Events')),
      const Center(child: Text('Completed Events')),
    ];

    _tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MaintenanceEventsScreenModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Maintenance Events'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Machine', icon: Icon(Icons.interpreter_mode_sharp)),
              //Tab(text: 'All', icon: Icon(Icons.factory)),
              Tab(text: 'Pending', icon: Icon(Icons.warning_amber)),
              Tab(text: 'Completed', icon: Icon(Icons.done_all)),
            ],
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).primaryColor,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: pages,
        ),
      ),
    );
  }

  Widget machineInfoWidget() {
    return Consumer<MaintenanceEventsScreenModel>(
      builder: (context, model, _) {
        if (model.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (model.machineData.isEmpty) {
          return const Center(
            child: Text('No machines found'),
          );
        }

        return ListView.builder(
          itemCount: model.machineData.length,
          itemBuilder: (context, index) {
            final machine = model.machineData[index];
            return ListTile(
              leading: Text(
                '${model.getEventCount(machine.idColumn!)}',
                style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.red,
                ),
              ),
              title: Text(
                machine.machine ?? 'Unknown Machine',
              ),
              subtitle: Text(machine.description ?? 'No description available'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DetailedMachineEventsScreen(
                      machineId: machine.idColumn!,
                      machineName: machine.machine ?? 'Unknown Machine',
                    ),
                  ),
                );
              },
              trailing: const Icon(Icons.arrow_right),
            );
          },
        );
      },
    );
  }
}
