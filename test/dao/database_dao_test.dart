@Timeout(Duration(minutes: 5))
library;

import 'package:certus_invision_app/data/certus_invision_database.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';


void main() async{

  group('CertusInvisionDatabase Connection Testing...', () {
    late CertusInvisionDatabase localDb;
    late CertusInvisionDatabase remoteDb;

    setUpAll(() async {
      localDb = CertusInvisionDatabase.local();
      remoteDb = CertusInvisionDatabase.postgres();
    });

    tearDownAll(() async{
      await localDb.close();
      await remoteDb.close();
    });

    test('Test 1: Testing local db connection...', () async {
      final localResult = await localDb.certusInvisionDao.isConnected();
      print('Local DB connection status: $localResult');
      final remoteResult = await remoteDb.certusInvisionDao.isConnected();
      print('Remote DB connection status: $remoteResult');
    });

    // test('Test 2: Raw SQL syntax', () {});

    test('Test 3: Drift SQL syntax', () async {

      final uuid = const Uuid().v4();
      UuidValue uuidValue = UuidValue.fromString(uuid);
      print('Generated UUID: $uuid');

      // Create model and insert into the table
      final newRecord = DriftDatabaseType(
        id: uuidValue,
        json: {"hello":"world"},
        // json:     {
        //   "user": {
        //     "id": 123,
        //     "name": "Rohan",
        //     "contact": {
        //       "email": "rf@gmail.com",
        //       "phone": "555-1234"
        //     }
        //   }
        // },
        date: DateTime.now(),
        number: 10114.550,
        timestamp: PgDateTime(DateTime.now()),
        boolValue: false,
        xml: '<root><element>Test 55</element></root>',
        characterVar: 'Sample Text',
        textVar: 'Checked, 3 clamps swopped, cleaned shafts so there is no grease or oil. Increased screw torque to 10Nm. Replaced threads on 1 clamp from M5 to M6 due to stripping'
      );

      final localResult = await localDb.certusInvisionDao.insertType(newRecord.toCompanion(true)); // .toCompanion(true) -> ignores nulls so DB defaults apply.
      expect(localResult, greaterThan(0), reason: 'Local insert should return a positive PK');

      final localFetched = await (localDb.select(localDb.driftDatabaseTypes)
        ..where((t) => t.id.equals(uuidValue)))
          .getSingleOrNull();

      expect(localFetched, isNotNull, reason: 'Local row must exist after insert');
      expect(localFetched!.id.toString(), equals(uuid));
      expect(localFetched.json, equals({"hello":"world"}));
      expect(localFetched.boolValue, isFalse);

      final remoteResult = await remoteDb.certusInvisionDao.insertType(newRecord.toCompanion(true)); // .toCompanion(true) -> ignores nulls so DB defaults apply.
      expect(remoteResult, greaterThan(0), reason: 'Remote insert should return a positive PK');

        final remoteFetched = await (remoteDb.select(remoteDb.driftDatabaseTypes)
          ..where((t) => t.id.equals(uuidValue)))
            .getSingleOrNull();
      expect(remoteFetched, isNotNull, reason: 'Remote row must exist after insert');
      expect(remoteFetched!.id.toString(), equals(uuid));
      expect(remoteFetched.json, equals({"hello":"world"}));
      expect(remoteFetched.boolValue, isFalse);


    });

    test('Test 4: reading records', () async {
      // List<DriftDatabaseType> localResult = await localDb.certusInvisionDao.getAll();
      // for(var row in localResult){
      //   print('Local DB id: ${row.id}');
      //   print('Local DB json: ${row.json}');
      //   print('Local DB date: ${row.date}');
      //   print('Local DB number: ${row.number}');
      //   print('Local DB timestamp no timezone: ${row.timestamp}');
      //   print('Local DB boolean: ${row.boolValue}');
      //   print('Local DB xml: ${row.xml}');
      //   print('Local DB auto int: ${row.autoIncrement}');
      // }

      List<DriftDatabaseType> remoteResult = await remoteDb.certusInvisionDao.getAll();
      for(var row in remoteResult){
        print('Local DB id: ${row.id}');
        print('Local DB json: ${row.json}');
        print('Local DB date: ${row.date}');
        print('Local DB number: ${row.number}');
        print('Local DB timestamp no timezone: ${row.timestamp}');
        print('Local DB boolean: ${row.boolValue}');
        print('Local DB xml: ${row.xml}');
        print('Local DB auto int: ${row.autoIncrement}');
      }

    });




  });


}


