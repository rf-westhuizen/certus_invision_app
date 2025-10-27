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
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v4());
  @override
  late final GeneratedColumn<String> json = GeneratedColumn<String>(
      'json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<BigInt> number = GeneratedColumn<BigInt>(
      'number', aliasedName, true,
      type: DriftSqlType.bigInt, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> timestamp =
      GeneratedColumn<PgDateTime>('timestamp', aliasedName, true,
          type: PgTypes.timestampNoTimezone, requiredDuringInsert: false);
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
      'auto_increment', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
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
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftDatabaseType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftDatabaseType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      json: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json']),
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date']),
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}number']),
      timestamp: attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone, data['${effectivePrefix}timestamp']),
      boolValue: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bool_value']),
      xml: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}xml']),
      autoIncrement: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auto_increment'])!,
    );
  }

  @override
  $DriftDatabaseTypesTable createAlias(String alias) {
    return $DriftDatabaseTypesTable(attachedDatabase, alias);
  }
}

class DriftDatabaseType extends DataClass
    implements Insertable<DriftDatabaseType> {
  final String? id;
  final String? json;
  final DateTime? date;
  final BigInt? number;
  final PgDateTime? timestamp;
  final bool? boolValue;
  final String? xml;
  final int autoIncrement;
  const DriftDatabaseType(
      {this.id,
      this.json,
      this.date,
      this.number,
      this.timestamp,
      this.boolValue,
      this.xml,
      required this.autoIncrement});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || json != null) {
      map['json'] = Variable<String>(json);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<BigInt>(number);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] =
          Variable<PgDateTime>(timestamp, PgTypes.timestampNoTimezone);
    }
    if (!nullToAbsent || boolValue != null) {
      map['bool_value'] = Variable<bool>(boolValue);
    }
    if (!nullToAbsent || xml != null) {
      map['xml'] = Variable<String>(xml);
    }
    map['auto_increment'] = Variable<int>(autoIncrement);
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
      autoIncrement: Value(autoIncrement),
    );
  }

  factory DriftDatabaseType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDatabaseType(
      id: serializer.fromJson<String?>(json['id']),
      json: serializer.fromJson<String?>(json['json']),
      date: serializer.fromJson<DateTime?>(json['date']),
      number: serializer.fromJson<BigInt?>(json['number']),
      timestamp: serializer.fromJson<PgDateTime?>(json['timestamp']),
      boolValue: serializer.fromJson<bool?>(json['boolValue']),
      xml: serializer.fromJson<String?>(json['xml']),
      autoIncrement: serializer.fromJson<int>(json['autoIncrement']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'json': serializer.toJson<String?>(json),
      'date': serializer.toJson<DateTime?>(date),
      'number': serializer.toJson<BigInt?>(number),
      'timestamp': serializer.toJson<PgDateTime?>(timestamp),
      'boolValue': serializer.toJson<bool?>(boolValue),
      'xml': serializer.toJson<String?>(xml),
      'autoIncrement': serializer.toJson<int>(autoIncrement),
    };
  }

  DriftDatabaseType copyWith(
          {String? id,
          String? json,
          DateTime? date,
          BigInt? number,
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
  final Value<String?> id;
  final Value<String?> json;
  final Value<DateTime?> date;
  final Value<BigInt?> number;
  final Value<PgDateTime?> timestamp;
  final Value<bool?> boolValue;
  final Value<String?> xml;
  final Value<int> autoIncrement;
  final Value<int> rowid;
  const DriftDatabaseTypesCompanion({
    this.id = const Value.absent(),
    this.json = const Value.absent(),
    this.date = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.boolValue = const Value.absent(),
    this.xml = const Value.absent(),
    this.autoIncrement = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DriftDatabaseTypesCompanion.insert({
    this.id = const Value.absent(),
    this.json = const Value.absent(),
    this.date = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.boolValue = const Value.absent(),
    this.xml = const Value.absent(),
    required int autoIncrement,
    this.rowid = const Value.absent(),
  }) : autoIncrement = Value(autoIncrement);
  static Insertable<DriftDatabaseType> custom({
    Expression<String>? id,
    Expression<String>? json,
    Expression<DateTime>? date,
    Expression<BigInt>? number,
    Expression<PgDateTime>? timestamp,
    Expression<bool>? boolValue,
    Expression<String>? xml,
    Expression<int>? autoIncrement,
    Expression<int>? rowid,
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
      if (rowid != null) 'rowid': rowid,
    });
  }

  DriftDatabaseTypesCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? json,
      Value<DateTime?>? date,
      Value<BigInt?>? number,
      Value<PgDateTime?>? timestamp,
      Value<bool?>? boolValue,
      Value<String?>? xml,
      Value<int>? autoIncrement,
      Value<int>? rowid}) {
    return DriftDatabaseTypesCompanion(
      id: id ?? this.id,
      json: json ?? this.json,
      date: date ?? this.date,
      number: number ?? this.number,
      timestamp: timestamp ?? this.timestamp,
      boolValue: boolValue ?? this.boolValue,
      xml: xml ?? this.xml,
      autoIncrement: autoIncrement ?? this.autoIncrement,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (json.present) {
      map['json'] = Variable<String>(json.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (number.present) {
      map['number'] = Variable<BigInt>(number.value);
    }
    if (timestamp.present) {
      map['timestamp'] =
          Variable<PgDateTime>(timestamp.value, PgTypes.timestampNoTimezone);
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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
          ..write('autoIncrement: $autoIncrement, ')
          ..write('rowid: $rowid')
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
  Value<String?> id,
  Value<String?> json,
  Value<DateTime?> date,
  Value<BigInt?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  required int autoIncrement,
  Value<int> rowid,
});
typedef $$DriftDatabaseTypesTableUpdateCompanionBuilder
    = DriftDatabaseTypesCompanion Function({
  Value<String?> id,
  Value<String?> json,
  Value<DateTime?> date,
  Value<BigInt?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  Value<int> autoIncrement,
  Value<int> rowid,
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
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get json => $composableBuilder(
      column: $table.json, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<BigInt> get number => $composableBuilder(
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
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get json => $composableBuilder(
      column: $table.json, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<BigInt> get number => $composableBuilder(
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
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get json =>
      $composableBuilder(column: $table.json, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<BigInt> get number =>
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
            Value<String?> id = const Value.absent(),
            Value<String?> json = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<BigInt?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            Value<int> autoIncrement = const Value.absent(),
            Value<int> rowid = const Value.absent(),
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
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> id = const Value.absent(),
            Value<String?> json = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<BigInt?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            required int autoIncrement,
            Value<int> rowid = const Value.absent(),
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
            rowid: rowid,
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
