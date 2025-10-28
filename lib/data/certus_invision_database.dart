

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter/foundation.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:uuid/uuid.dart';
import 'models/drift_database_types.dart';

part 'certus_invision_database.g.dart';

@DriftDatabase(tables: [DriftDatabaseTypes])
class CertusInvisionDatabase extends _$CertusInvisionDatabase{

  // create constructor
  CertusInvisionDatabase(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;


  factory CertusInvisionDatabase.local() {
    final dbFile = File('/sdcard/certus_invision_db.sqlite');
    final executor = NativeDatabase(dbFile);
    return CertusInvisionDatabase(executor);
  }

  factory CertusInvisionDatabase.postgres(){
    final executor = PgDatabase(
      settings: pg.ConnectionSettings(
        timeZone: 'Africa/Johannesburg',
        connectTimeout: const Duration(seconds: 30),
        queryTimeout: null,
        sslMode: pg.SslMode.require,
      ),
      endpoint: pg.Endpoint(
        host: 'invisionapp.postgres.database.azure.com',
        database: 'postgres',
        username: 'citus',
        password: 'DuitseR64332',
      ),
      logStatements: kDebugMode, // only log when debugging
    );
    return CertusInvisionDatabase(executor);
  }


}