import 'package:flutter/material.dart';

import '../../data/certus_invision_database.dart';



class DetailedMachineEventsScreenModel extends ChangeNotifier {
  final int machineId;
  final String? eventFilter;

  DetailedMachineEventsScreenModel({
    required this.machineId,
    this.eventFilter,
  }) {
    _loadEvents();
  }

  late CertusInvisionDatabase _invisionDb;

  final List<MaintenanceEvent> _events = [];
  List<MaintenanceEvent> get events => List.unmodifiable(_events);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> _loadEvents() async {
    _isLoading = true;
    notifyListeners();

    _invisionDb = CertusInvisionDatabase.invision();

    List<MaintenanceEvent> result;
    if (machineId > 0) {
      result = await _invisionDb.certusInvisionDao.getMachineEventsById(machineId);
    } else {
      result = await _invisionDb.certusInvisionDao.getAllEvents();
    }

    // Apply filter if specified
    if (eventFilter != null) {
      result = result.where((event) {
        final status = event.status?.toLowerCase();
        return status == eventFilter?.toLowerCase();
      }).toList();
    }

    _events
      ..clear()
      ..addAll(result);

    _isLoading = false;
    notifyListeners();
  }
}
