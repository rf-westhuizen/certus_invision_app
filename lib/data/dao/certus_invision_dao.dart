import 'package:drift/drift.dart';

import '../certus_invision_database.dart';
import '../models/drift_database_types.dart';
import '../models/maintenance_events_a.dart';
import '../models/maintenence_contacts_a.dart';
import '../models/maintenence_items_a.dart';
import '../models/maintenence_sched_tasks_a.dart';

part 'certus_invision_dao.g.dart';

@DriftAccessor(
  tables: [
    DriftDatabaseTypes,
    MaintenanceEvents,
    MaintenenceContacts,
    MaintenenceItems,
    MaintenenceSchedTasks
  ],
  views: [],
)
class CertusInvisionDao extends DatabaseAccessor<CertusInvisionDatabase>
    with _$CertusInvisionDaoMixin {

  CertusInvisionDao(CertusInvisionDatabase db) : super(db);
  // same as CertusInvisionDao(super.db);

  Future<int> insertType(DriftDatabaseTypesCompanion  companion) {
    return into(driftDatabaseTypes).insert(companion);
  }

  Future<bool> updateType(DriftDatabaseType row) {
    return update(driftDatabaseTypes).replace(row);
  }

  Future<int> deleteType(DriftDatabaseType row) {
    return delete(driftDatabaseTypes).delete(row);
  }

  Future<List<DriftDatabaseType>> getAll() {
    return select(driftDatabaseTypes).get();
  }

  Future<List<MaintenenceContact>> getAllContact() {
    return select(maintenenceContacts).get();
  }

  // Not the best test, but it is fine for now
  Future<bool> isConnected() async {
    final query = selectOnly(driftDatabaseTypes)
      ..addColumns([const Constant(1)]);
    final result = await query.get();
    return result.isNotEmpty; // false if table exists but empty
  }

  // Get all machine information
 Future<List<MaintenenceItem>> getAllMachines() async {
    final query = select(maintenenceItems);
    final result = await query.get();
    return result;
  }

  // Future<MaintenenceItem> getMachineById(int machineId) async {
  //   final query = select(maintenenceItems)
  //     ..where((tbl) => tbl.machineId.equals(machineId));
  //   final result = await query.getSingleOrNull();
  //   if (result == null) {
  //     throw Exception('Machine with ID $machineId not found.');
  //   }
  //   return result;
  // }

  Future<List<MaintenanceEvent>> getMachineEventsById(int machineId) async {
    final query = select(maintenenceItems).join([
      innerJoin(
        maintenanceEvents,
        maintenanceEvents.machineId.equalsExp(maintenenceItems.idColumn),
      ),
    ])
    ..where(maintenenceItems.idColumn.equals(machineId));

    final rows = await query.get();
    if (rows.isEmpty) {
      return [];
    }
    return rows.map((row) => row.readTable(maintenanceEvents)).toList();

  }

  Future<int> getMachineEventCount(int machineId) async {
    final query = select(maintenanceEvents)
      ..where((tbl) => tbl.machineId.equals(machineId));
    return query.get().then((rows) => rows.length);
  }

  Future<List<MaintenanceEvent>> getAllEvents() async {
    final query = select(maintenanceEvents);
    return await query.get();
  }


}
