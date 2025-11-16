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
  int? _selectedMachineId;
  String? _selectedMachineName;

  late List<Widget> pages;

  @override
  void initState() {
    super.initState();

    _initializeTabs();

    _tabController = TabController(length: pages.length, vsync: this);
    _tabController.addListener(_handleTabChange);
  }


  void _handleTabChange() {
    if(_tabController.index != 0 && _selectedMachineId == null){
      _tabController.animateTo(0);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a machine first.'),
        ),
      );
    }
  }

  void _initializeTabs() {
    pages = [
      machineInfoWidget(),
      DetailedMachineEventsScreen(machineId: _selectedMachineId ?? 1, machineName: _selectedMachineName ?? 'All Machines', eventFilter: 'Open'),
      DetailedMachineEventsScreen(machineId: _selectedMachineId ?? 1, machineName: _selectedMachineName ?? 'All Machines', eventFilter: 'Closed'),
    ];
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
              Tab(text: 'Machine', icon: Icon(Icons.account_tree_outlined)),
              //Tab(text: 'All', icon: Icon(Icons.factory)),
              Tab(text: 'Open Events', icon: Icon(Icons.warning_amber)),
              Tab(text: 'Closed Events', icon: Icon(Icons.done_all)),
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
          return const Center(child: CircularProgressIndicator());
        }

        if (model.machineData.isEmpty) {
          return const Center(child: Text('No machines found'));
        }

        return ListView.builder(
          itemCount: model.machineData.length,
          itemBuilder: (context, index) {
            final machine = model.machineData[index];
            return ListTile(
              title: Text(machine.machine ?? 'Unknown Machine'),
              subtitle: Text(machine.description ?? 'No description available'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${model.getEventCount(machine.idColumn!)} events',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_right),
                ],
              ),
              onTap: () {
                setState(() {
                  _selectedMachineId = machine.idColumn;
                  _selectedMachineName = machine.machine;
                  _initializeTabs(); // Rebuild pages with the selected machine
                  _tabController.animateTo(1); // Switch to Pending Events tab
                });
              },
            );
          },
        );
      },
    );
  }
}
