import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

import '../../types/timestamp_no_timezone.dart';
import '../../types/numeric.dart';


class MaintenanceEvents extends Table {
  @override
  String get tableName => 'maintenanceeventsa';

  IntColumn get eventid => integer().named('eventid').nullable()();
  IntColumn get machineid => integer().named('machineid').nullable()();
  TextColumn get type => text().named('type').withLength(min: 0, max: 100).nullable()();
  TextColumn get faultdescription => text().named('faultdescription').nullable()();
  Column<PgDateTime> get date => customType(timestampWithoutTimezoneType).named('date').nullable()();
  TextColumn get loggedby => text().named('loggedby').withLength(min: 0, max: 100).nullable()();
  TextColumn get reportedby => text().named('reportedby').withLength(min: 0, max: 100).nullable()();
  TextColumn get fixapplied => text().named('fixapplied').nullable()();
  TextColumn get referencenumber => text().named('referencenumber').withLength(min: 0, max: 100).nullable()();
  Column<double> get cost => customType(numericType).named('cost').nullable()(); // check limits (12,2)
  TextColumn get inhouse => text().named('inhouse').withLength(min: 0, max: 10).nullable()();
  TextColumn get contactused => text().named('contactused').withLength(min: 0, max: 100).nullable()();
  TextColumn get timefrom => text().named('timefrom').withLength(min: 0, max: 20).nullable()();
  TextColumn get timeto => text().named('timeto').withLength(min: 0, max: 20).nullable()();
  TextColumn get planned => text().named('planned').withLength(min: 0, max: 50).nullable()();
  TextColumn get status => text().named('status').withLength(min: 0, max: 50).nullable()();
  TextColumn get technician => text().named('technician').withLength(min: 0, max: 100).nullable()();
  Column<PgDateTime> get datefrom => customType(timestampWithoutTimezoneType).named('datefrom').nullable()();
  Column<PgDateTime> get dateto => customType(timestampWithoutTimezoneType).named('dateto').nullable()();
  Column<PgDateTime> get logdate => customType(timestampWithoutTimezoneType).named('logdate').nullable()();
  IntColumn get schedeventid => integer().named('schedeventid').nullable()();
  Column<double> get downtime => customType(numericType).named('downtime').nullable()();

}