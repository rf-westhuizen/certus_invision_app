import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

import '../../types/timestamp_no_timezone.dart';
import '../../types/numeric.dart';


class MaintenanceEvents extends Table {
  @override
  String get tableName => 'maintenanceeventsa';

  IntColumn get eventId => integer().named('eventid').nullable()();
  IntColumn get machineId => integer().named('machineid').nullable()();
  TextColumn get type => text().named('type').withLength(min: 0, max: 100).nullable()();
  TextColumn get faultDescription => text().named('faultdescription').nullable()();
  Column<PgDateTime> get date => customType(timestampWithoutTimezoneType).named('date').nullable()();
  TextColumn get loggedBy => text().named('loggedby').withLength(min: 0, max: 100).nullable()();
  TextColumn get reportedBy => text().named('reportedby').withLength(min: 0, max: 100).nullable()();
  TextColumn get fixApplied => text().named('fixapplied').nullable()();
  TextColumn get referenceNumber => text().named('referencenumber').withLength(min: 0, max: 100).nullable()();
  Column<double> get cost => customType(numericType).named('cost').nullable()(); // check limits (12,2)
  TextColumn get inHouse => text().named('inhouse').withLength(min: 0, max: 10).nullable()();
  TextColumn get contactUsed => text().named('contactused').withLength(min: 0, max: 100).nullable()();
  TextColumn get timeFrom => text().named('timefrom').withLength(min: 0, max: 20).nullable()();
  TextColumn get timeTo => text().named('timeto').withLength(min: 0, max: 20).nullable()();
  TextColumn get planned => text().named('planned').withLength(min: 0, max: 50).nullable()();
  TextColumn get status => text().named('status').withLength(min: 0, max: 50).nullable()();
  TextColumn get technician => text().named('technician').withLength(min: 0, max: 100).nullable()();
  Column<PgDateTime> get dateFrom => customType(timestampWithoutTimezoneType).named('datefrom').nullable()();
  Column<PgDateTime> get dateTo => customType(timestampWithoutTimezoneType).named('dateto').nullable()();
  Column<PgDateTime> get logDate => customType(timestampWithoutTimezoneType).named('logdate').nullable()();
  IntColumn get schedEventId => integer().named('schedeventid').nullable()();
  Column<double> get downtime => customType(numericType).named('downtime').nullable()();

  @override
  Set<Column> get primaryKey => {eventId};

}