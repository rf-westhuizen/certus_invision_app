import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

const uuidType = DialectAwareSqlType<UuidValue>.via(
  fallback: _UuidAsTextType(),
  overrides: {SqlDialect.postgres: PgTypes.uuid},
);

class NativeUuidType implements CustomSqlType<UuidValue> {
  const NativeUuidType();

  @override
  String mapToSqlLiteral(UuidValue dartValue) {
    return "'$dartValue'";
  }

  @override
  Object mapToSqlParameter(UuidValue dartValue) {
    return dartValue;
  }

  @override
  UuidValue read(Object fromSql) {
    return fromSql as UuidValue;
  }

  @override
  String sqlTypeName(GenerationContext context) => 'uuid';
}

class _UuidAsTextType implements CustomSqlType<UuidValue> {
  const _UuidAsTextType();

  @override
  String mapToSqlLiteral(UuidValue dartValue) {
    return "'$dartValue'";
  }

  @override
  Object mapToSqlParameter(UuidValue dartValue) {
    return dartValue.toString();
  }

  @override
  UuidValue read(Object fromSql) {
    return UuidValue.fromString(fromSql as String);
  }

  @override
  String sqlTypeName(GenerationContext context) => 'text';
}

