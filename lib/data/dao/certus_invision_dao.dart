import 'package:drift/drift.dart';

import '../certus_invision_database.dart';
import '../models/drift_database_types.dart';

part 'certus_invision_dao.g.dart';

@DriftAccessor(tables: [DriftDatabaseTypes])
class CertusInvisionDao extends DatabaseAccessor<CertusInvisionDatabase> with _$CertusInvisionDaoMixin {
  CertusInvisionDao(dynamic db) : super(db);
}