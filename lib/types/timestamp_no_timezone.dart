import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

// Fallback for SQLite since it does not support TIMESTAMP WITHOUT TIME ZONE.
class FallbackTimestampWithoutTimezoneType
    implements CustomSqlType<PgDateTime> {
  const FallbackTimestampWithoutTimezoneType();

  // This will convert a "PgDateTime' object to a string literal for inclusion in a SQL command.
  @override
  String mapToSqlLiteral(PgDateTime dartValue) {
    return "'${dartValue.dateTime.toLocal().toIso8601String()}'";
  }

  // This will convert a "PgDateTime' object to a parameter that can be used in a SQL command.
  @override
  Object mapToSqlParameter(PgDateTime? dartValue) {
    return (dartValue?.dateTime ?? DateTime.utc(1900, 1, 1)).toIso8601String();
  }

  @override
  PgDateTime read(Object fromSql) {
    if (fromSql is DateTime) {
      return PgDateTime(fromSql);
    } else if (fromSql is String) {
      return PgDateTime(DateTime.parse(fromSql));
    } else {
      throw const FormatException('Invalid format for timestamp data');
    }
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'TEXT';
  }
}

class FallbackPostgresTimestampColumnType implements CustomSqlType<PgDateTime> {
  const FallbackPostgresTimestampColumnType();

  // Even if the column in PostgreSQL is of 'timestamp without timezone' type
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

const timestampWithoutTimezoneType = DialectAwareSqlType.via(
  fallback: PgTypes.timestampWithTimezone,
  overrides: {
    SqlDialect.postgres: FallbackPostgresTimestampColumnType(),
    SqlDialect.sqlite: FallbackTimestampWithoutTimezoneType(),
  },
);
