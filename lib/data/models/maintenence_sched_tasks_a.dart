import 'package:drift/drift.dart';

import '../../types/json.dart';
import '../../types/timestamp_no_timezone.dart';
import '../../types/uuid.dart';
import '../../types/numeric.dart';
import '../../types/date.dart';
import '../../types/xml.dart';

class MaintenenceSchedTasks extends Table {
  @override
  String get tableName => 'maintenenceitemsa';

  IntColumn get id => integer().named('id').nullable()();
  IntColumn get machineId => integer().named('machineid').nullable()();
  TextColumn get task => text().named('task').nullable()();
  Column<double> get frequency => customType(numericType).named('frequency').nullable()();
  Column<DateTime> get dstartDate => customType(dateType).named('startdate').nullable()();
  TextColumn get createdBy => text().named('createdby').nullable()();
  TextColumn get frequencyUnit => text().named('frequencyunit').nullable()();

  @override
  Set<Column> get primaryKey => {id};

}