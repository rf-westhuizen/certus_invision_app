import 'package:flutter/material.dart';

import '../../data/certus_invision_database.dart';

class MaintenanceEventsScreenModel extends ChangeNotifier{

  late CertusInvisionDatabase invisionDb;
  final List<MaintenenceItem> _machineData = [];
  final Map<int, int> _eventCounts = {};

  // now nothing from the outside can modify the list directly
  List<MaintenenceItem> get machineData => List.unmodifiable(_machineData);

  set machineData(List<MaintenenceItem> value) {
    _machineData
      ..clear()
      ..addAll(value);
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  MaintenanceEventsScreenModel() {
    _getMachineData();
  }

  int getEventCount(int machineId) => _eventCounts[machineId] ?? 0;

  Future<void> _loadEventCounts() async {
    for (final machine in _machineData) {
      if (machine.idColumn != null) {
        _eventCounts[machine.idColumn!] =
        await invisionDb.certusInvisionDao.getMachineEventCount(machine.idColumn!);
      }
    }
    notifyListeners();
  }

  Future<void> _getMachineData() async {
    _isLoading = true;
    notifyListeners();
    invisionDb = CertusInvisionDatabase.invision();
    final invisionResult = await invisionDb.certusInvisionDao.getAllMachines();
    _machineData.clear();
    _machineData.addAll(invisionResult);
    await _loadEventCounts();
    _isLoading = false;
    notifyListeners();
  }

}