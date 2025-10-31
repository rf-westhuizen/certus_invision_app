import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

const timestampWithoutTimezoneType = DialectAwareSqlType.via(
  fallback: PgTypes.timestampWithTimezone,
  overrides: {
    SqlDialect.postgres: FallbackPostgresTimestampColumnType(),
    SqlDialect.sqlite: FallbackTimestampWithoutTimezoneType(),
  },
);

class FallbackTimestampWithoutTimezoneType implements CustomSqlType<PgDateTime> {
  const FallbackTimestampWithoutTimezoneType();

  @override
  String mapToSqlLiteral(PgDateTime dartValue) {
    return "'${dartValue.dateTime.toIso8601String()}'";
  }

  @override
  Object mapToSqlParameter(PgDateTime dartValue) {
    return dartValue.dateTime.toIso8601String();
  }

  @override
  PgDateTime read(Object fromSql) {
    if (fromSql is String) {
      return PgDateTime(DateTime.parse(fromSql));
    }
    throw Exception('Expected String for SQLite timestamp, got ${fromSql.runtimeType}');
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'TEXT';
  }
}

class FallbackPostgresTimestampColumnType implements CustomSqlType<PgDateTime> {
  const FallbackPostgresTimestampColumnType();

  @override
  String mapToSqlLiteral(PgDateTime dartValue) {
    return PgTypes.timestampWithTimezone.mapToSqlLiteral(dartValue);
  }

  @override
  Object mapToSqlParameter(PgDateTime? dartValue) {
    return PgTypes.timestampWithTimezone.mapToSqlParameter(dartValue!);
  }

  @override
  PgDateTime read(Object fromSql) {
    return PgTypes.timestampNoTimezone.read(fromSql);
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'TEXT';
  }
}