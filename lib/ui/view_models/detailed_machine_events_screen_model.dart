import 'package:flutter/material.dart';

import '../../data/certus_invision_database.dart';



class DetailedMachineEventsScreenModel extends ChangeNotifier {
  final int machineId;

  DetailedMachineEventsScreenModel({
    required this.machineId,
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

    final result = await _invisionDb.certusInvisionDao.getMachineEventsById(machineId);

    _events
      ..clear()
      ..addAll(result);

    _isLoading = false;
    notifyListeners();
  }
}
