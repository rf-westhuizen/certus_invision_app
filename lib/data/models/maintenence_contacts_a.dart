import 'package:drift/drift.dart';

class MaintenenceContacts extends Table {
  @override
  String get tableName => 'maintenencecontactsa';

  IntColumn get contactId => integer().named('contactid').nullable()();
  IntColumn get machineId => integer().named('machineid').nullable()();
  TextColumn get contactPerson => text().named('contactperson').nullable()();
  TextColumn get contactNumber => text().named('contactnumber').nullable()();
  TextColumn get alternativeNumber => text().named('alternativenumber').nullable()();
  TextColumn get emailAddress => text().named('emailadress').nullable()();
  TextColumn get servicesProvides => text().named('servicesprovides').nullable()();
  TextColumn get companyName => text().named('companyname').nullable()();

  @override
  Set<Column> get primaryKey => {contactId};

}