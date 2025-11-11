import 'package:flutter/material.dart';

import '../data/repositories/maintenance_repository.dart';

class AppState extends ChangeNotifier{
  AppState(this._repo);
  final MaintenanceRepository _repo;

  String? _userFilter;

  String? get userFilter => _userFilter;

  set userFilter(String? value) {
    if (_userFilter != value) {
      _userFilter = value;
      notifyListeners();
    }
  }

  /// We will see if this gets used here
  // Pass-through methods so screens can query via the shared repo
  // Future<List<Machine>> getMachines() => _repo.fetchMachines();
  // Future<int> getEventCount(String machineId) => _repo.countEventsFor(machineId);
  // Future<List<EventItem>> getEvents(String machineId) => _repo.fetchEventsFor(machineId);

}