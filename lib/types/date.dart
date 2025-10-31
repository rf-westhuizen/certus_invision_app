import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

const dateType = DialectAwareSqlType<DateTime>.via(
  fallback: DateAsTextType(),
  overrides: {
    SqlDialect.postgres: CustomPostgresDateType(),
    SqlDialect.sqlite: DateAsTextType(),
  },
);

class DateAsTextType implements CustomSqlType<DateTime> {
  const DateAsTextType();

  @override
  String mapToSqlLiteral(DateTime dartValue) {
    return "'${dartValue.toIso8601String().substring(0, 10)}'";
  }

  @override
  Object mapToSqlParameter(DateTime dartValue) {
    return dartValue.toIso8601String().substring(0, 10);
  }

  @override
  DateTime read(Object fromSql) {
    if (fromSql is String) {
      return DateTime.parse(fromSql);
    } else {
      throw FormatException('Invalid format for date data');
    }
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'TEXT';
  }
}

class CustomPostgresDateType implements CustomSqlType<DateTime> {
  const CustomPostgresDateType();

  @override
  String mapToSqlLiteral(DateTime dartValue) {
    final pgDate = PgDate.fromDateTime(dartValue);
    return PgTypes.date.mapToSqlLiteral(pgDate);
  }

  @override
  Object mapToSqlParameter(DateTime dartValue) {
    final pgDate = PgDate.fromDateTime(dartValue);
    return PgTypes.date.mapToSqlParameter(pgDate);
  }

  @override
  DateTime read(Object fromSql) {
    if (fromSql is PgDate) {
      return DateTime(fromSql.year, fromSql.month, fromSql.day);
    } else if (fromSql is String) {
      return DateTime.parse(fromSql.split(' ')[0]);
    } else if (fromSql is DateTime) {
      return DateTime(fromSql.year, fromSql.month, fromSql.day);
    } else {
      throw FormatException(
          'Expected PgDate from database, received: $fromSql');
    }
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return PgTypes.date.sqlTypeName(context);
  }
}
