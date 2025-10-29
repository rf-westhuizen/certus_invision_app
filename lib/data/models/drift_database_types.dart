import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:uuid/uuid.dart';

import '../../types/json.dart';
import '../../types/timestamp_no_timezone.dart';
import '../../types/uuid.dart';
import '../../types/numeric.dart';

class DriftDatabaseTypes extends Table {
  @override
  String get tableName => 'drift_database_types';

  Column<UuidValue> get id => customType(uuidType)
      .nullable()
      .clientDefault(() => UuidValue.fromString(const Uuid().v4()))();
  JsonColumn get json => customType(jsonType).named('json').nullable()();
  //Column<PgDate> get date => customType(dateType).named('date').nullable()();
  Column<PgDate> get date => customType(PgTypes.date).named('date').nullable()();
  Column<double> get number => customType(numericType).nullable()();
  TimestampColumn get timestamp =>
      customType(timestampWithoutTimezoneType).named('timestamp').nullable()();
  BoolColumn get boolValue => boolean().nullable().withDefault(const Constant(false)).named('bool_value')();
  TextColumn get xml => text().nullable()(); // can't do this atm
  IntColumn get autoIncrement => integer().autoIncrement().named('auto_increment').nullable()();


  // @override
  // Set<Column> get primaryKey => {id}; // Drift internally sets a column specified as autoIncrement() to the primary key.
}