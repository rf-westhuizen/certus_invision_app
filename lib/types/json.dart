import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

const jsonType = DialectAwareSqlType.via(
  fallback: _FallbackJsonType(),
  overrides: {
    SqlDialect.postgres: PgTypes.jsonb,
  },
);


class _FallbackJsonType implements CustomSqlType<Map<String, dynamic>> {
  const _FallbackJsonType();

  @override
  String sqlTypeName(GenerationContext context) => 'TEXT';

  @override
  String mapToSqlLiteral(Map<String, dynamic> dartValue) {
    return jsonEncode(dartValue);
  }

  @override
  Object mapToSqlParameter(Map<String, dynamic> dartValue) {
    return jsonEncode(dartValue);
  }

  @override
  Map<String, dynamic> read(Object fromSql) {
    return jsonDecode(fromSql as String);
  }
}
