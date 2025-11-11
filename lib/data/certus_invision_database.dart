

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter/foundation.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:uuid/uuid.dart';
import '../types/date.dart';
import '../types/json.dart';
import '../types/numeric.dart';
import '../types/timestamp_no_timezone.dart';
import '../types/uuid.dart';
import '../types/xml.dart';
import 'dao/certus_invision_dao.dart';
import 'models/drift_database_types.dart';
import 'models/maintenance_events_a.dart';
import 'models/maintenence_contacts_a.dart';
import 'models/maintenence_items_a.dart';
import 'models/maintenence_sched_tasks_a.dart';

part 'certus_invision_database.g.dart';

enum DatabaseType { local, remote }



@DriftDatabase(
  tables: [
    DriftDatabaseTypes,
    MaintenanceEvents,
    MaintenenceContacts,
    MaintenenceItems,
    MaintenenceSchedTasks
  ],
  views: [],
  daos: [CertusInvisionDao],
  include: {},
)

class CertusInvisionDatabase extends _$CertusInvisionDatabase{

  // create constructor
  CertusInvisionDatabase(QueryExecutor executor) : super(executor);

  // TODO: remember to add permissions on the android side
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
      // TODO: Look into using environment variables or secure storage for credentials
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

  factory CertusInvisionDatabase.invision(){
    final executor = PgDatabase(
      settings: pg.ConnectionSettings(
        timeZone: 'Africa/Johannesburg',
        connectTimeout: const Duration(seconds: 30),
        queryTimeout: null,
        sslMode: pg.SslMode.require,
      ),
      endpoint: pg.Endpoint(
        host: 'invisionapp.postgres.database.azure.com',
        database: 'invision2',
        username: 'citus',
        password: 'DuitseR64332',
      ),
      logStatements: kDebugMode, // only log when debugging
    );
    return CertusInvisionDatabase(executor);
  }


  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      // TODO: Add this logic to differentiate between local and remote dbs
      //if (type == DatabaseType.remote) return Future(() => null);
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from == 1) {
        await m.create(driftDatabaseTypes);
      }
    },
    beforeOpen: (details) async {},
  );


}