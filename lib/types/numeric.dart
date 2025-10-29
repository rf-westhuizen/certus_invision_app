import 'package:drift/drift.dart';

// Define the Numeric type for PostgreSQL
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

// Define a fallback type for SQLite that uses REAL (double is directly supported in SQLite)
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

// Use DialectAwareSqlType to appropriately use types based on the SQL dialect
const numericType = DialectAwareSqlType<double>.via(
  fallback: FallbackNumericType(),
  overrides: {
    SqlDialect.postgres: NumericType(),
  },
);
