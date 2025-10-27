

import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:uuid/uuid.dart';
import 'models/drift_database_types.dart';

part 'certus_invision_database.g.dart';

@DriftDatabase(tables: [DriftDatabaseTypes])
class CertusInvisionDatabase extends _$CertusInvisionDatabase{

  // create constructor
  CertusInvisionDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return PgDatabase(
      endpoint: pg.Endpoint(
        host: 'localhost',
        database: 'database',
        username: 'dart',
        password: 'mysecurepassword',
      ),
    );
  }

}