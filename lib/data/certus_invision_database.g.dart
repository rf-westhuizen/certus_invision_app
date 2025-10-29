// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certus_invision_database.dart';

// ignore_for_file: type=lint
class $DriftDatabaseTypesTable extends DriftDatabaseTypes
    with TableInfo<$DriftDatabaseTypesTable, DriftDatabaseType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftDatabaseTypesTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<UuidValue> id = GeneratedColumn<UuidValue>(
      'id', aliasedName, true,
      type: uuidType,
      requiredDuringInsert: false,
      clientDefault: () => UuidValue.fromString(const Uuid().v4()));
  @override
  late final GeneratedColumn<Object> json = GeneratedColumn<Object>(
      'json', aliasedName, true,
      type: jsonType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDate> date = GeneratedColumn<PgDate>(
      'date', aliasedName, true,
      type: PgTypes.date, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<double> number = GeneratedColumn<double>(
      'number', aliasedName, true,
      type: numericType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> timestamp =
      GeneratedColumn<PgDateTime>('timestamp', aliasedName, true,
          type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<bool> boolValue =
      GeneratedColumn<bool>('bool_value', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("bool_value" IN (0, 1))',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  @override
  late final GeneratedColumn<String> xml = GeneratedColumn<String>(
      'xml', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> autoIncrement = GeneratedColumn<int>(
      'auto_increment', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, json, date, number, timestamp, boolValue, xml, autoIncrement];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_database_types';
  @override
  Set<GeneratedColumn> get $primaryKey => {autoIncrement};
  @override
  DriftDatabaseType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftDatabaseType(
      id: attachedDatabase.typeMapping
          .read(uuidType, data['${effectivePrefix}id']),
      json: attachedDatabase.typeMapping
          .read(jsonType, data['${effectivePrefix}json']),
      date: attachedDatabase.typeMapping
          .read(PgTypes.date, data['${effectivePrefix}date']),
      number: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}number']),
      timestamp: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}timestamp']),
      boolValue: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bool_value']),
      xml: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}xml']),
      autoIncrement: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auto_increment']),
    );
  }

  @override
  $DriftDatabaseTypesTable createAlias(String alias) {
    return $DriftDatabaseTypesTable(attachedDatabase, alias);
  }
}

class DriftDatabaseType extends DataClass
    implements Insertable<DriftDatabaseType> {
  final UuidValue? id;
  final Object? json;
  final PgDate? date;
  final double? number;
  final PgDateTime? timestamp;
  final bool? boolValue;
  final String? xml;
  final int? autoIncrement;
  const DriftDatabaseType(
      {this.id,
      this.json,
      this.date,
      this.number,
      this.timestamp,
      this.boolValue,
      this.xml,
      this.autoIncrement});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<UuidValue>(id, uuidType);
    }
    if (!nullToAbsent || json != null) {
      map['json'] = Variable<Object>(json, jsonType);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<PgDate>(date, PgTypes.date);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<double>(number, numericType);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] =
          Variable<PgDateTime>(timestamp, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || boolValue != null) {
      map['bool_value'] = Variable<bool>(boolValue);
    }
    if (!nullToAbsent || xml != null) {
      map['xml'] = Variable<String>(xml);
    }
    if (!nullToAbsent || autoIncrement != null) {
      map['auto_increment'] = Variable<int>(autoIncrement);
    }
    return map;
  }

  DriftDatabaseTypesCompanion toCompanion(bool nullToAbsent) {
    return DriftDatabaseTypesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      json: json == null && nullToAbsent ? const Value.absent() : Value(json),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      boolValue: boolValue == null && nullToAbsent
          ? const Value.absent()
          : Value(boolValue),
      xml: xml == null && nullToAbsent ? const Value.absent() : Value(xml),
      autoIncrement: autoIncrement == null && nullToAbsent
          ? const Value.absent()
          : Value(autoIncrement),
    );
  }

  factory DriftDatabaseType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDatabaseType(
      id: serializer.fromJson<UuidValue?>(json['id']),
      json: serializer.fromJson<Object?>(json['json']),
      date: serializer.fromJson<PgDate?>(json['date']),
      number: serializer.fromJson<double?>(json['number']),
      timestamp: serializer.fromJson<PgDateTime?>(json['timestamp']),
      boolValue: serializer.fromJson<bool?>(json['boolValue']),
      xml: serializer.fromJson<String?>(json['xml']),
      autoIncrement: serializer.fromJson<int?>(json['autoIncrement']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<UuidValue?>(id),
      'json': serializer.toJson<Object?>(json),
      'date': serializer.toJson<PgDate?>(date),
      'number': serializer.toJson<double?>(number),
      'timestamp': serializer.toJson<PgDateTime?>(timestamp),
      'boolValue': serializer.toJson<bool?>(boolValue),
      'xml': serializer.toJson<String?>(xml),
      'autoIncrement': serializer.toJson<int?>(autoIncrement),
    };
  }

  DriftDatabaseType copyWith(
          {UuidValue? id,
          Object? json,
          PgDate? date,
          double? number,
          PgDateTime? timestamp,
          bool? boolValue,
          String? xml,
          int? autoIncrement}) =>
      DriftDatabaseType(
        id: id ?? this.id,
        json: json ?? this.json,
        date: date ?? this.date,
        number: number ?? this.number,
        timestamp: timestamp ?? this.timestamp,
        boolValue: boolValue ?? this.boolValue,
        xml: xml ?? this.xml,
        autoIncrement: autoIncrement ?? this.autoIncrement,
      );
  DriftDatabaseType copyWithCompanion(DriftDatabaseTypesCompanion data) {
    return DriftDatabaseType(
      id: data.id.present ? data.id.value : this.id,
      json: data.json.present ? data.json.value : this.json,
      date: data.date.present ? data.date.value : this.date,
      number: data.number.present ? data.number.value : this.number,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      boolValue: data.boolValue.present ? data.boolValue.value : this.boolValue,
      xml: data.xml.present ? data.xml.value : this.xml,
      autoIncrement: data.autoIncrement.present
          ? data.autoIncrement.value
          : this.autoIncrement,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftDatabaseType(')
          ..write('id: $id, ')
          ..write('json: $json, ')
          ..write('date: $date, ')
          ..write('number: $number, ')
          ..write('timestamp: $timestamp, ')
          ..write('boolValue: $boolValue, ')
          ..write('xml: $xml, ')
          ..write('autoIncrement: $autoIncrement')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, json, date, number, timestamp, boolValue, xml, autoIncrement);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftDatabaseType &&
          other.id == this.id &&
          other.json == this.json &&
          other.date == this.date &&
          other.number == this.number &&
          other.timestamp == this.timestamp &&
          other.boolValue == this.boolValue &&
          other.xml == this.xml &&
          other.autoIncrement == this.autoIncrement);
}

class DriftDatabaseTypesCompanion extends UpdateCompanion<DriftDatabaseType> {
  final Value<UuidValue?> id;
  final Value<Object?> json;
  final Value<PgDate?> date;
  final Value<double?> number;
  final Value<PgDateTime?> timestamp;
  final Value<bool?> boolValue;
  final Value<String?> xml;
  final Value<int?> autoIncrement;
  const DriftDatabaseTypesCompanion({
    this.id = const Value.absent(),
    this.json = const Value.absent(),
    this.date = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.boolValue = const Value.absent(),
    this.xml = const Value.absent(),
    this.autoIncrement = const Value.absent(),
  });
  DriftDatabaseTypesCompanion.insert({
    this.id = const Value.absent(),
    this.json = const Value.absent(),
    this.date = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.boolValue = const Value.absent(),
    this.xml = const Value.absent(),
    this.autoIncrement = const Value.absent(),
  });
  static Insertable<DriftDatabaseType> custom({
    Expression<UuidValue>? id,
    Expression<Object>? json,
    Expression<PgDate>? date,
    Expression<double>? number,
    Expression<PgDateTime>? timestamp,
    Expression<bool>? boolValue,
    Expression<String>? xml,
    Expression<int>? autoIncrement,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (json != null) 'json': json,
      if (date != null) 'date': date,
      if (number != null) 'number': number,
      if (timestamp != null) 'timestamp': timestamp,
      if (boolValue != null) 'bool_value': boolValue,
      if (xml != null) 'xml': xml,
      if (autoIncrement != null) 'auto_increment': autoIncrement,
    });
  }

  DriftDatabaseTypesCompanion copyWith(
      {Value<UuidValue?>? id,
      Value<Object?>? json,
      Value<PgDate?>? date,
      Value<double?>? number,
      Value<PgDateTime?>? timestamp,
      Value<bool?>? boolValue,
      Value<String?>? xml,
      Value<int?>? autoIncrement}) {
    return DriftDatabaseTypesCompanion(
      id: id ?? this.id,
      json: json ?? this.json,
      date: date ?? this.date,
      number: number ?? this.number,
      timestamp: timestamp ?? this.timestamp,
      boolValue: boolValue ?? this.boolValue,
      xml: xml ?? this.xml,
      autoIncrement: autoIncrement ?? this.autoIncrement,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(id.value, uuidType);
    }
    if (json.present) {
      map['json'] = Variable<Object>(json.value, jsonType);
    }
    if (date.present) {
      map['date'] = Variable<PgDate>(date.value, PgTypes.date);
    }
    if (number.present) {
      map['number'] = Variable<double>(number.value, numericType);
    }
    if (timestamp.present) {
      map['timestamp'] =
          Variable<PgDateTime>(timestamp.value, timestampWithoutTimezoneType);
    }
    if (boolValue.present) {
      map['bool_value'] = Variable<bool>(boolValue.value);
    }
    if (xml.present) {
      map['xml'] = Variable<String>(xml.value);
    }
    if (autoIncrement.present) {
      map['auto_increment'] = Variable<int>(autoIncrement.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftDatabaseTypesCompanion(')
          ..write('id: $id, ')
          ..write('json: $json, ')
          ..write('date: $date, ')
          ..write('number: $number, ')
          ..write('timestamp: $timestamp, ')
          ..write('boolValue: $boolValue, ')
          ..write('xml: $xml, ')
          ..write('autoIncrement: $autoIncrement')
          ..write(')'))
        .toString();
  }
}

abstract class _$CertusInvisionDatabase extends GeneratedDatabase {
  _$CertusInvisionDatabase(QueryExecutor e) : super(e);
  $CertusInvisionDatabaseManager get managers =>
      $CertusInvisionDatabaseManager(this);
  late final $DriftDatabaseTypesTable driftDatabaseTypes =
      $DriftDatabaseTypesTable(this);
  late final CertusInvisionDao certusInvisionDao =
      CertusInvisionDao(this as CertusInvisionDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftDatabaseTypes];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$DriftDatabaseTypesTableCreateCompanionBuilder
    = DriftDatabaseTypesCompanion Function({
  Value<UuidValue?> id,
  Value<Object?> json,
  Value<PgDate?> date,
  Value<double?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  Value<int?> autoIncrement,
});
typedef $$DriftDatabaseTypesTableUpdateCompanionBuilder
    = DriftDatabaseTypesCompanion Function({
  Value<UuidValue?> id,
  Value<Object?> json,
  Value<PgDate?> date,
  Value<double?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  Value<int?> autoIncrement,
});

class $$DriftDatabaseTypesTableFilterComposer
    extends Composer<_$CertusInvisionDatabase, $DriftDatabaseTypesTable> {
  $$DriftDatabaseTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<Object> get json => $composableBuilder(
      column: $table.json, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDate> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get boolValue => $composableBuilder(
      column: $table.boolValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get xml => $composableBuilder(
      column: $table.xml, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get autoIncrement => $composableBuilder(
      column: $table.autoIncrement, builder: (column) => ColumnFilters(column));
}

class $$DriftDatabaseTypesTableOrderingComposer
    extends Composer<_$CertusInvisionDatabase, $DriftDatabaseTypesTable> {
  $$DriftDatabaseTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Object> get json => $composableBuilder(
      column: $table.json, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDate> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get boolValue => $composableBuilder(
      column: $table.boolValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get xml => $composableBuilder(
      column: $table.xml, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get autoIncrement => $composableBuilder(
      column: $table.autoIncrement,
      builder: (column) => ColumnOrderings(column));
}

class $$DriftDatabaseTypesTableAnnotationComposer
    extends Composer<_$CertusInvisionDatabase, $DriftDatabaseTypesTable> {
  $$DriftDatabaseTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Object> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<PgDate> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<PgDateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<bool> get boolValue =>
      $composableBuilder(column: $table.boolValue, builder: (column) => column);

  GeneratedColumn<String> get xml =>
      $composableBuilder(column: $table.xml, builder: (column) => column);

  GeneratedColumn<int> get autoIncrement => $composableBuilder(
      column: $table.autoIncrement, builder: (column) => column);
}

class $$DriftDatabaseTypesTableTableManager extends RootTableManager<
    _$CertusInvisionDatabase,
    $DriftDatabaseTypesTable,
    DriftDatabaseType,
    $$DriftDatabaseTypesTableFilterComposer,
    $$DriftDatabaseTypesTableOrderingComposer,
    $$DriftDatabaseTypesTableAnnotationComposer,
    $$DriftDatabaseTypesTableCreateCompanionBuilder,
    $$DriftDatabaseTypesTableUpdateCompanionBuilder,
    (
      DriftDatabaseType,
      BaseReferences<_$CertusInvisionDatabase, $DriftDatabaseTypesTable,
          DriftDatabaseType>
    ),
    DriftDatabaseType,
    PrefetchHooks Function()> {
  $$DriftDatabaseTypesTableTableManager(
      _$CertusInvisionDatabase db, $DriftDatabaseTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DriftDatabaseTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DriftDatabaseTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DriftDatabaseTypesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<UuidValue?> id = const Value.absent(),
            Value<Object?> json = const Value.absent(),
            Value<PgDate?> date = const Value.absent(),
            Value<double?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            Value<int?> autoIncrement = const Value.absent(),
          }) =>
              DriftDatabaseTypesCompanion(
            id: id,
            json: json,
            date: date,
            number: number,
            timestamp: timestamp,
            boolValue: boolValue,
            xml: xml,
            autoIncrement: autoIncrement,
          ),
          createCompanionCallback: ({
            Value<UuidValue?> id = const Value.absent(),
            Value<Object?> json = const Value.absent(),
            Value<PgDate?> date = const Value.absent(),
            Value<double?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            Value<int?> autoIncrement = const Value.absent(),
          }) =>
              DriftDatabaseTypesCompanion.insert(
            id: id,
            json: json,
            date: date,
            number: number,
            timestamp: timestamp,
            boolValue: boolValue,
            xml: xml,
            autoIncrement: autoIncrement,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DriftDatabaseTypesTableProcessedTableManager = ProcessedTableManager<
    _$CertusInvisionDatabase,
    $DriftDatabaseTypesTable,
    DriftDatabaseType,
    $$DriftDatabaseTypesTableFilterComposer,
    $$DriftDatabaseTypesTableOrderingComposer,
    $$DriftDatabaseTypesTableAnnotationComposer,
    $$DriftDatabaseTypesTableCreateCompanionBuilder,
    $$DriftDatabaseTypesTableUpdateCompanionBuilder,
    (
      DriftDatabaseType,
      BaseReferences<_$CertusInvisionDatabase, $DriftDatabaseTypesTable,
          DriftDatabaseType>
    ),
    DriftDatabaseType,
    PrefetchHooks Function()>;

class $CertusInvisionDatabaseManager {
  final _$CertusInvisionDatabase _db;
  $CertusInvisionDatabaseManager(this._db);
  $$DriftDatabaseTypesTableTableManager get driftDatabaseTypes =>
      $$DriftDatabaseTypesTableTableManager(_db, _db.driftDatabaseTypes);
}
