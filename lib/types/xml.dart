import 'package:drift/drift.dart';
import 'package:postgres/postgres.dart';

const xmlType = DialectAwareSqlType<String>.via(
  fallback: XmlAsTextType(),
  overrides: {
    SqlDialect.postgres: CustomPostgresXmlType(),
    SqlDialect.sqlite: XmlAsTextType(),
  },
);

class _XmlType extends Type<String> {
  const _XmlType() : super(142);
}

class XmlAsTextType implements CustomSqlType<String> {
  const XmlAsTextType();

  @override
  String mapToSqlLiteral(String dartValue) {
    // Escape single quotes in XML content
    final escaped = dartValue.replaceAll("'", "''");
    return "'$escaped'";
  }

  @override
  Object mapToSqlParameter(String dartValue) {
    return dartValue;
  }

  @override
  String read(Object fromSql) {
    if (fromSql is String) {
      return fromSql;
    } else if (fromSql is UndecodedBytes) {
      return fromSql.asString;
    } else {
      throw FormatException('Expected String or UndecodedBytes from database, received: $fromSql');
    }
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'TEXT';
  }
}

class CustomPostgresXmlType implements CustomSqlType<String> {
  const CustomPostgresXmlType();

  @override
  String mapToSqlLiteral(String dartValue) {
    // Escape single quotes in XML content
    final escaped = dartValue.replaceAll("'", "''");
    return "'$escaped'::xml";
  }

  @override
  Object mapToSqlParameter(String dartValue) {
    return TypedValue(const _XmlType(), dartValue);
  }

  @override
  String read(Object fromSql) {
    if (fromSql is String) return fromSql;
    if (fromSql is UndecodedBytes) return fromSql.asString; // <-- fix
    throw FormatException('Expected String or UndecodedBytes from database, received: $fromSql');
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return 'xml';
  }
}
