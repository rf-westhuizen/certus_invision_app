import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:uuid/uuid.dart';

class DriftDatabaseTypes extends Table {
  @override
  String get tableName => 'drift_database_types';

  TextColumn get id => text().nullable().clientDefault(() => const Uuid().v4())();
  TextColumn get json => text().nullable()();
  DateTimeColumn get date => dateTime().nullable()();
  Int64Column get number => int64().nullable()();
  TimestampColumn get timestamp => customType(PgTypes.timestampNoTimezone).named('timestamp').nullable()();
  BoolColumn get boolValue => boolean().nullable().withDefault(const Constant(false)).named('bool_value')();
  TextColumn get xml => text().nullable()();
  IntColumn get autoIncrement => integer().autoIncrement().named('auto_increment')();


  @override
  Set<Column> get primaryKey => {id};
}