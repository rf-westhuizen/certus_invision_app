import 'package:drift/drift.dart';

class MaintenenceItems extends Table {
  @override
  String get tableName => 'maintenenceitemsa';

  IntColumn get idColumn => integer().named('id_column').nullable()();
  TextColumn get machine => text().named('machine').nullable()();
  TextColumn get description => text().named('description').nullable()();
  TextColumn get category => text().named('category').nullable()();
  TextColumn get serial => text().named('serial').nullable()();

  @override
  Set<Column> get primaryKey => {idColumn};
}