import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/detailed_machine_events_screen_model.dart';



class DetailedMachineEventsScreen extends StatelessWidget {
  final int? machineId;
  final String machineName;
  final String? eventFilter; // 'pending' or 'completed'

  const DetailedMachineEventsScreen({
    super.key,
    this.machineId,
    required this.machineName,
    this.eventFilter,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DetailedMachineEventsScreenModel(
        machineId: machineId!,
        eventFilter: eventFilter,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('$machineName - ${eventFilter?.toUpperCase() ?? 'ALL'} Events'),
        ),
        body: Consumer<DetailedMachineEventsScreenModel>(
          builder: (context, model, _) {
            if (model.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (model.events.isEmpty) {
              return const Center(child: Text('No events found'));
            }

            return ListView.builder(
              itemCount: model.events.length,
              itemBuilder: (context, index) {
                final event = model.events[index];
                return ListTile(
                  leading: const Icon(Icons.event_note),
                  title: Text(event.faultDescription ?? 'No description'),
                  subtitle: Text(event.logDate.toString()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}