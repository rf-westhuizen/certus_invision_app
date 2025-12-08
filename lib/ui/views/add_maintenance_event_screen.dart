import 'package:flutter/material.dart';

class AddMaintenanceEventScreen extends StatefulWidget {
  static const String id = 'add_maintenance_event_screen';

  final int machineId;
  final String machineName;

  const AddMaintenanceEventScreen({
    super.key,
    required this.machineId,
    required this.machineName,
  });

  @override
  State<AddMaintenanceEventScreen> createState() => _AddMaintenanceEventScreenState();
}

class _AddMaintenanceEventScreenState extends State<AddMaintenanceEventScreen> {

  final _formKey = GlobalKey<FormState>();
  final _faultDescriptionController = TextEditingController();


  Future<void> _saveEvent() async {}

  @override
  void dispose() {
    _faultDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event - ${widget.machineName}'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextButton(
              onPressed: _saveEvent,
              child: const Text(
                'SAVE',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Form(child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Text('machine id: ${widget.machineId} and machine name: ${widget.machineName}'),
          const SizedBox(height: 16),
        ],
      ),),
    );
  }
}
