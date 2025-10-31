import 'package:drift/drift.dart';

const numericType = DialectAwareSqlType<double>.via(
  fallback: FallbackNumericType(),
  overrides: {
    SqlDialect.postgres: NumericType(),
  },
);

class NumericType implements CustomSqlType<double> {
  const NumericType();

  @override
  String mapToSqlLiteral(double dartValue) => dartValue.toString();

  @override
  Object mapToSqlParameter(double dartValue) => dartValue;

  @override
  double read(Object fromSql) =>
      fromSql is double ? fromSql : double.parse(fromSql as String);

  @override
  String sqlTypeName(GenerationContext context) => 'NUMERIC';
}

class FallbackNumericType implements CustomSqlType<double> {
  const FallbackNumericType();

  @override
  String mapToSqlLiteral(double dartValue) => dartValue.toString();

  @override
  Object mapToSqlParameter(double dartValue) => dartValue;

  @override
  double read(Object fromSql) =>
      fromSql is double ? fromSql : double.parse(fromSql as String);

  @override
  String sqlTypeName(GenerationContext context) => 'REAL';
}

