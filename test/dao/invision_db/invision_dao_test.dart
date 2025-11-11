@Timeout(Duration(minutes: 5))
library;

import 'package:certus_invision_app/data/certus_invision_database.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  group('CertusInvisionDatabase Connection Testing...', () {
    late CertusInvisionDatabase localDb;
    late CertusInvisionDatabase invisionDb;

    setUpAll(() async {
      localDb = CertusInvisionDatabase.local();
      invisionDb = CertusInvisionDatabase.invision();
    });

    tearDownAll(() async {
      await localDb.close();
      await invisionDb.close();
    });

    test('Test 1: Testing db connections...', () async {
      final localResult = await localDb.certusInvisionDao.isConnected();
      print('Local DB connection status: $localResult');
      final invisionResult = await invisionDb.certusInvisionDao.isConnected();
      print('Invision DB connection status: $invisionResult');
    });

    test('Test 4: reading records', () async {
      List<MaintenenceContact> invisionResult =
          await invisionDb.certusInvisionDao.getAllContact();
      for (var row in invisionResult) {
        print('contactid: ${row.contactId}');
        print('machineid: ${row.machineId}');
        print('contactperson: ${row.contactPerson}');
        print('contactnumber: ${row.contactNumber}');
        print('alternativenumber: ${row.alternativeNumber}');
        print('emailadress: ${row.emailAddress}');
        print('servicesprovides: ${row.servicesProvides}');
        print('companyname: ${row.companyName}');
      }
    });
  });
}
