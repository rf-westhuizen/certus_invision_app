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
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, true,
      type: dateType, requiredDuringInsert: false);
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
      type: xmlType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> autoIncrement = GeneratedColumn<int>(
      'auto_increment', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  @override
  late final GeneratedColumn<String> characterVar = GeneratedColumn<String>(
      'character_var', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> textVar = GeneratedColumn<String>(
      'text_var', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        json,
        date,
        number,
        timestamp,
        boolValue,
        xml,
        autoIncrement,
        characterVar,
        textVar
      ];
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
          .read(dateType, data['${effectivePrefix}date']),
      number: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}number']),
      timestamp: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}timestamp']),
      boolValue: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bool_value']),
      xml: attachedDatabase.typeMapping
          .read(xmlType, data['${effectivePrefix}xml']),
      autoIncrement: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auto_increment']),
      characterVar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}character_var']),
      textVar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_var']),
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
  final DateTime? date;
  final double? number;
  final PgDateTime? timestamp;
  final bool? boolValue;
  final String? xml;
  final int? autoIncrement;
  final String? characterVar;
  final String? textVar;
  const DriftDatabaseType(
      {this.id,
      this.json,
      this.date,
      this.number,
      this.timestamp,
      this.boolValue,
      this.xml,
      this.autoIncrement,
      this.characterVar,
      this.textVar});
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
      map['date'] = Variable<DateTime>(date, dateType);
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
      map['xml'] = Variable<String>(xml, xmlType);
    }
    if (!nullToAbsent || autoIncrement != null) {
      map['auto_increment'] = Variable<int>(autoIncrement);
    }
    if (!nullToAbsent || characterVar != null) {
      map['character_var'] = Variable<String>(characterVar);
    }
    if (!nullToAbsent || textVar != null) {
      map['text_var'] = Variable<String>(textVar);
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
      characterVar: characterVar == null && nullToAbsent
          ? const Value.absent()
          : Value(characterVar),
      textVar: textVar == null && nullToAbsent
          ? const Value.absent()
          : Value(textVar),
    );
  }

  factory DriftDatabaseType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDatabaseType(
      id: serializer.fromJson<UuidValue?>(json['id']),
      json: serializer.fromJson<Object?>(json['json']),
      date: serializer.fromJson<DateTime?>(json['date']),
      number: serializer.fromJson<double?>(json['number']),
      timestamp: serializer.fromJson<PgDateTime?>(json['timestamp']),
      boolValue: serializer.fromJson<bool?>(json['boolValue']),
      xml: serializer.fromJson<String?>(json['xml']),
      autoIncrement: serializer.fromJson<int?>(json['autoIncrement']),
      characterVar: serializer.fromJson<String?>(json['characterVar']),
      textVar: serializer.fromJson<String?>(json['textVar']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<UuidValue?>(id),
      'json': serializer.toJson<Object?>(json),
      'date': serializer.toJson<DateTime?>(date),
      'number': serializer.toJson<double?>(number),
      'timestamp': serializer.toJson<PgDateTime?>(timestamp),
      'boolValue': serializer.toJson<bool?>(boolValue),
      'xml': serializer.toJson<String?>(xml),
      'autoIncrement': serializer.toJson<int?>(autoIncrement),
      'characterVar': serializer.toJson<String?>(characterVar),
      'textVar': serializer.toJson<String?>(textVar),
    };
  }

  DriftDatabaseType copyWith(
          {UuidValue? id,
          Object? json,
          DateTime? date,
          double? number,
          PgDateTime? timestamp,
          bool? boolValue,
          String? xml,
          int? autoIncrement,
          String? characterVar,
          String? textVar}) =>
      DriftDatabaseType(
        id: id ?? this.id,
        json: json ?? this.json,
        date: date ?? this.date,
        number: number ?? this.number,
        timestamp: timestamp ?? this.timestamp,
        boolValue: boolValue ?? this.boolValue,
        xml: xml ?? this.xml,
        autoIncrement: autoIncrement ?? this.autoIncrement,
        characterVar: characterVar ?? this.characterVar,
        textVar: textVar ?? this.textVar,
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
      characterVar: data.characterVar.present
          ? data.characterVar.value
          : this.characterVar,
      textVar: data.textVar.present ? data.textVar.value : this.textVar,
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
          ..write('autoIncrement: $autoIncrement, ')
          ..write('characterVar: $characterVar, ')
          ..write('textVar: $textVar')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, json, date, number, timestamp, boolValue,
      xml, autoIncrement, characterVar, textVar);
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
          other.autoIncrement == this.autoIncrement &&
          other.characterVar == this.characterVar &&
          other.textVar == this.textVar);
}

class DriftDatabaseTypesCompanion extends UpdateCompanion<DriftDatabaseType> {
  final Value<UuidValue?> id;
  final Value<Object?> json;
  final Value<DateTime?> date;
  final Value<double?> number;
  final Value<PgDateTime?> timestamp;
  final Value<bool?> boolValue;
  final Value<String?> xml;
  final Value<int?> autoIncrement;
  final Value<String?> characterVar;
  final Value<String?> textVar;
  const DriftDatabaseTypesCompanion({
    this.id = const Value.absent(),
    this.json = const Value.absent(),
    this.date = const Value.absent(),
    this.number = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.boolValue = const Value.absent(),
    this.xml = const Value.absent(),
    this.autoIncrement = const Value.absent(),
    this.characterVar = const Value.absent(),
    this.textVar = const Value.absent(),
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
    this.characterVar = const Value.absent(),
    this.textVar = const Value.absent(),
  });
  static Insertable<DriftDatabaseType> custom({
    Expression<UuidValue>? id,
    Expression<Object>? json,
    Expression<DateTime>? date,
    Expression<double>? number,
    Expression<PgDateTime>? timestamp,
    Expression<bool>? boolValue,
    Expression<String>? xml,
    Expression<int>? autoIncrement,
    Expression<String>? characterVar,
    Expression<String>? textVar,
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
      if (characterVar != null) 'character_var': characterVar,
      if (textVar != null) 'text_var': textVar,
    });
  }

  DriftDatabaseTypesCompanion copyWith(
      {Value<UuidValue?>? id,
      Value<Object?>? json,
      Value<DateTime?>? date,
      Value<double?>? number,
      Value<PgDateTime?>? timestamp,
      Value<bool?>? boolValue,
      Value<String?>? xml,
      Value<int?>? autoIncrement,
      Value<String?>? characterVar,
      Value<String?>? textVar}) {
    return DriftDatabaseTypesCompanion(
      id: id ?? this.id,
      json: json ?? this.json,
      date: date ?? this.date,
      number: number ?? this.number,
      timestamp: timestamp ?? this.timestamp,
      boolValue: boolValue ?? this.boolValue,
      xml: xml ?? this.xml,
      autoIncrement: autoIncrement ?? this.autoIncrement,
      characterVar: characterVar ?? this.characterVar,
      textVar: textVar ?? this.textVar,
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
      map['date'] = Variable<DateTime>(date.value, dateType);
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
      map['xml'] = Variable<String>(xml.value, xmlType);
    }
    if (autoIncrement.present) {
      map['auto_increment'] = Variable<int>(autoIncrement.value);
    }
    if (characterVar.present) {
      map['character_var'] = Variable<String>(characterVar.value);
    }
    if (textVar.present) {
      map['text_var'] = Variable<String>(textVar.value);
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
          ..write('characterVar: $characterVar, ')
          ..write('textVar: $textVar')
          ..write(')'))
        .toString();
  }
}

class $MaintenanceEventsTable extends MaintenanceEvents
    with TableInfo<$MaintenanceEventsTable, MaintenanceEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaintenanceEventsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> eventid = GeneratedColumn<int>(
      'eventid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> machineid = GeneratedColumn<int>(
      'machineid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> faultdescription = GeneratedColumn<String>(
      'faultdescription', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> date = GeneratedColumn<PgDateTime>(
      'date', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> loggedby = GeneratedColumn<String>(
      'loggedby', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> reportedby = GeneratedColumn<String>(
      'reportedby', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> fixapplied = GeneratedColumn<String>(
      'fixapplied', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> referencenumber = GeneratedColumn<String>(
      'referencenumber', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<double> cost = GeneratedColumn<double>(
      'cost', aliasedName, true,
      type: numericType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> inhouse = GeneratedColumn<String>(
      'inhouse', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> contactused = GeneratedColumn<String>(
      'contactused', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> timefrom = GeneratedColumn<String>(
      'timefrom', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> timeto = GeneratedColumn<String>(
      'timeto', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> planned = GeneratedColumn<String>(
      'planned', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> technician = GeneratedColumn<String>(
      'technician', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> datefrom = GeneratedColumn<PgDateTime>(
      'datefrom', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> dateto = GeneratedColumn<PgDateTime>(
      'dateto', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> logdate = GeneratedColumn<PgDateTime>(
      'logdate', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> schedeventid = GeneratedColumn<int>(
      'schedeventid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<double> downtime = GeneratedColumn<double>(
      'downtime', aliasedName, true,
      type: numericType, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        eventid,
        machineid,
        type,
        faultdescription,
        date,
        loggedby,
        reportedby,
        fixapplied,
        referencenumber,
        cost,
        inhouse,
        contactused,
        timefrom,
        timeto,
        planned,
        status,
        technician,
        datefrom,
        dateto,
        logdate,
        schedeventid,
        downtime
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenanceeventsa';
  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MaintenanceEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenanceEvent(
      eventid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}eventid']),
      machineid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}machineid']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      faultdescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}faultdescription']),
      date: attachedDatabase.typeMapping
          .read(timestampWithoutTimezoneType, data['${effectivePrefix}date']),
      loggedby: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}loggedby']),
      reportedby: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reportedby']),
      fixapplied: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fixapplied']),
      referencenumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}referencenumber']),
      cost: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}cost']),
      inhouse: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inhouse']),
      contactused: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contactused']),
      timefrom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timefrom']),
      timeto: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timeto']),
      planned: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}planned']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      technician: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}technician']),
      datefrom: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}datefrom']),
      dateto: attachedDatabase.typeMapping
          .read(timestampWithoutTimezoneType, data['${effectivePrefix}dateto']),
      logdate: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}logdate']),
      schedeventid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}schedeventid']),
      downtime: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}downtime']),
    );
  }

  @override
  $MaintenanceEventsTable createAlias(String alias) {
    return $MaintenanceEventsTable(attachedDatabase, alias);
  }
}

class MaintenanceEvent extends DataClass
    implements Insertable<MaintenanceEvent> {
  final int? eventid;
  final int? machineid;
  final String? type;
  final String? faultdescription;
  final PgDateTime? date;
  final String? loggedby;
  final String? reportedby;
  final String? fixapplied;
  final String? referencenumber;
  final double? cost;
  final String? inhouse;
  final String? contactused;
  final String? timefrom;
  final String? timeto;
  final String? planned;
  final String? status;
  final String? technician;
  final PgDateTime? datefrom;
  final PgDateTime? dateto;
  final PgDateTime? logdate;
  final int? schedeventid;
  final double? downtime;
  const MaintenanceEvent(
      {this.eventid,
      this.machineid,
      this.type,
      this.faultdescription,
      this.date,
      this.loggedby,
      this.reportedby,
      this.fixapplied,
      this.referencenumber,
      this.cost,
      this.inhouse,
      this.contactused,
      this.timefrom,
      this.timeto,
      this.planned,
      this.status,
      this.technician,
      this.datefrom,
      this.dateto,
      this.logdate,
      this.schedeventid,
      this.downtime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || eventid != null) {
      map['eventid'] = Variable<int>(eventid);
    }
    if (!nullToAbsent || machineid != null) {
      map['machineid'] = Variable<int>(machineid);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || faultdescription != null) {
      map['faultdescription'] = Variable<String>(faultdescription);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<PgDateTime>(date, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || loggedby != null) {
      map['loggedby'] = Variable<String>(loggedby);
    }
    if (!nullToAbsent || reportedby != null) {
      map['reportedby'] = Variable<String>(reportedby);
    }
    if (!nullToAbsent || fixapplied != null) {
      map['fixapplied'] = Variable<String>(fixapplied);
    }
    if (!nullToAbsent || referencenumber != null) {
      map['referencenumber'] = Variable<String>(referencenumber);
    }
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<double>(cost, numericType);
    }
    if (!nullToAbsent || inhouse != null) {
      map['inhouse'] = Variable<String>(inhouse);
    }
    if (!nullToAbsent || contactused != null) {
      map['contactused'] = Variable<String>(contactused);
    }
    if (!nullToAbsent || timefrom != null) {
      map['timefrom'] = Variable<String>(timefrom);
    }
    if (!nullToAbsent || timeto != null) {
      map['timeto'] = Variable<String>(timeto);
    }
    if (!nullToAbsent || planned != null) {
      map['planned'] = Variable<String>(planned);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    if (!nullToAbsent || technician != null) {
      map['technician'] = Variable<String>(technician);
    }
    if (!nullToAbsent || datefrom != null) {
      map['datefrom'] =
          Variable<PgDateTime>(datefrom, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || dateto != null) {
      map['dateto'] =
          Variable<PgDateTime>(dateto, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || logdate != null) {
      map['logdate'] =
          Variable<PgDateTime>(logdate, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || schedeventid != null) {
      map['schedeventid'] = Variable<int>(schedeventid);
    }
    if (!nullToAbsent || downtime != null) {
      map['downtime'] = Variable<double>(downtime, numericType);
    }
    return map;
  }

  MaintenanceEventsCompanion toCompanion(bool nullToAbsent) {
    return MaintenanceEventsCompanion(
      eventid: eventid == null && nullToAbsent
          ? const Value.absent()
          : Value(eventid),
      machineid: machineid == null && nullToAbsent
          ? const Value.absent()
          : Value(machineid),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      faultdescription: faultdescription == null && nullToAbsent
          ? const Value.absent()
          : Value(faultdescription),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      loggedby: loggedby == null && nullToAbsent
          ? const Value.absent()
          : Value(loggedby),
      reportedby: reportedby == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedby),
      fixapplied: fixapplied == null && nullToAbsent
          ? const Value.absent()
          : Value(fixapplied),
      referencenumber: referencenumber == null && nullToAbsent
          ? const Value.absent()
          : Value(referencenumber),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
      inhouse: inhouse == null && nullToAbsent
          ? const Value.absent()
          : Value(inhouse),
      contactused: contactused == null && nullToAbsent
          ? const Value.absent()
          : Value(contactused),
      timefrom: timefrom == null && nullToAbsent
          ? const Value.absent()
          : Value(timefrom),
      timeto:
          timeto == null && nullToAbsent ? const Value.absent() : Value(timeto),
      planned: planned == null && nullToAbsent
          ? const Value.absent()
          : Value(planned),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      technician: technician == null && nullToAbsent
          ? const Value.absent()
          : Value(technician),
      datefrom: datefrom == null && nullToAbsent
          ? const Value.absent()
          : Value(datefrom),
      dateto:
          dateto == null && nullToAbsent ? const Value.absent() : Value(dateto),
      logdate: logdate == null && nullToAbsent
          ? const Value.absent()
          : Value(logdate),
      schedeventid: schedeventid == null && nullToAbsent
          ? const Value.absent()
          : Value(schedeventid),
      downtime: downtime == null && nullToAbsent
          ? const Value.absent()
          : Value(downtime),
    );
  }

  factory MaintenanceEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenanceEvent(
      eventid: serializer.fromJson<int?>(json['eventid']),
      machineid: serializer.fromJson<int?>(json['machineid']),
      type: serializer.fromJson<String?>(json['type']),
      faultdescription: serializer.fromJson<String?>(json['faultdescription']),
      date: serializer.fromJson<PgDateTime?>(json['date']),
      loggedby: serializer.fromJson<String?>(json['loggedby']),
      reportedby: serializer.fromJson<String?>(json['reportedby']),
      fixapplied: serializer.fromJson<String?>(json['fixapplied']),
      referencenumber: serializer.fromJson<String?>(json['referencenumber']),
      cost: serializer.fromJson<double?>(json['cost']),
      inhouse: serializer.fromJson<String?>(json['inhouse']),
      contactused: serializer.fromJson<String?>(json['contactused']),
      timefrom: serializer.fromJson<String?>(json['timefrom']),
      timeto: serializer.fromJson<String?>(json['timeto']),
      planned: serializer.fromJson<String?>(json['planned']),
      status: serializer.fromJson<String?>(json['status']),
      technician: serializer.fromJson<String?>(json['technician']),
      datefrom: serializer.fromJson<PgDateTime?>(json['datefrom']),
      dateto: serializer.fromJson<PgDateTime?>(json['dateto']),
      logdate: serializer.fromJson<PgDateTime?>(json['logdate']),
      schedeventid: serializer.fromJson<int?>(json['schedeventid']),
      downtime: serializer.fromJson<double?>(json['downtime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'eventid': serializer.toJson<int?>(eventid),
      'machineid': serializer.toJson<int?>(machineid),
      'type': serializer.toJson<String?>(type),
      'faultdescription': serializer.toJson<String?>(faultdescription),
      'date': serializer.toJson<PgDateTime?>(date),
      'loggedby': serializer.toJson<String?>(loggedby),
      'reportedby': serializer.toJson<String?>(reportedby),
      'fixapplied': serializer.toJson<String?>(fixapplied),
      'referencenumber': serializer.toJson<String?>(referencenumber),
      'cost': serializer.toJson<double?>(cost),
      'inhouse': serializer.toJson<String?>(inhouse),
      'contactused': serializer.toJson<String?>(contactused),
      'timefrom': serializer.toJson<String?>(timefrom),
      'timeto': serializer.toJson<String?>(timeto),
      'planned': serializer.toJson<String?>(planned),
      'status': serializer.toJson<String?>(status),
      'technician': serializer.toJson<String?>(technician),
      'datefrom': serializer.toJson<PgDateTime?>(datefrom),
      'dateto': serializer.toJson<PgDateTime?>(dateto),
      'logdate': serializer.toJson<PgDateTime?>(logdate),
      'schedeventid': serializer.toJson<int?>(schedeventid),
      'downtime': serializer.toJson<double?>(downtime),
    };
  }

  MaintenanceEvent copyWith(
          {int? eventid,
          int? machineid,
          String? type,
          String? faultdescription,
          PgDateTime? date,
          String? loggedby,
          String? reportedby,
          String? fixapplied,
          String? referencenumber,
          double? cost,
          String? inhouse,
          String? contactused,
          String? timefrom,
          String? timeto,
          String? planned,
          String? status,
          String? technician,
          PgDateTime? datefrom,
          PgDateTime? dateto,
          PgDateTime? logdate,
          int? schedeventid,
          double? downtime}) =>
      MaintenanceEvent(
        eventid: eventid ?? this.eventid,
        machineid: machineid ?? this.machineid,
        type: type ?? this.type,
        faultdescription: faultdescription ?? this.faultdescription,
        date: date ?? this.date,
        loggedby: loggedby ?? this.loggedby,
        reportedby: reportedby ?? this.reportedby,
        fixapplied: fixapplied ?? this.fixapplied,
        referencenumber: referencenumber ?? this.referencenumber,
        cost: cost ?? this.cost,
        inhouse: inhouse ?? this.inhouse,
        contactused: contactused ?? this.contactused,
        timefrom: timefrom ?? this.timefrom,
        timeto: timeto ?? this.timeto,
        planned: planned ?? this.planned,
        status: status ?? this.status,
        technician: technician ?? this.technician,
        datefrom: datefrom ?? this.datefrom,
        dateto: dateto ?? this.dateto,
        logdate: logdate ?? this.logdate,
        schedeventid: schedeventid ?? this.schedeventid,
        downtime: downtime ?? this.downtime,
      );
  MaintenanceEvent copyWithCompanion(MaintenanceEventsCompanion data) {
    return MaintenanceEvent(
      eventid: data.eventid.present ? data.eventid.value : this.eventid,
      machineid: data.machineid.present ? data.machineid.value : this.machineid,
      type: data.type.present ? data.type.value : this.type,
      faultdescription: data.faultdescription.present
          ? data.faultdescription.value
          : this.faultdescription,
      date: data.date.present ? data.date.value : this.date,
      loggedby: data.loggedby.present ? data.loggedby.value : this.loggedby,
      reportedby:
          data.reportedby.present ? data.reportedby.value : this.reportedby,
      fixapplied:
          data.fixapplied.present ? data.fixapplied.value : this.fixapplied,
      referencenumber: data.referencenumber.present
          ? data.referencenumber.value
          : this.referencenumber,
      cost: data.cost.present ? data.cost.value : this.cost,
      inhouse: data.inhouse.present ? data.inhouse.value : this.inhouse,
      contactused:
          data.contactused.present ? data.contactused.value : this.contactused,
      timefrom: data.timefrom.present ? data.timefrom.value : this.timefrom,
      timeto: data.timeto.present ? data.timeto.value : this.timeto,
      planned: data.planned.present ? data.planned.value : this.planned,
      status: data.status.present ? data.status.value : this.status,
      technician:
          data.technician.present ? data.technician.value : this.technician,
      datefrom: data.datefrom.present ? data.datefrom.value : this.datefrom,
      dateto: data.dateto.present ? data.dateto.value : this.dateto,
      logdate: data.logdate.present ? data.logdate.value : this.logdate,
      schedeventid: data.schedeventid.present
          ? data.schedeventid.value
          : this.schedeventid,
      downtime: data.downtime.present ? data.downtime.value : this.downtime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaintenanceEvent(')
          ..write('eventid: $eventid, ')
          ..write('machineid: $machineid, ')
          ..write('type: $type, ')
          ..write('faultdescription: $faultdescription, ')
          ..write('date: $date, ')
          ..write('loggedby: $loggedby, ')
          ..write('reportedby: $reportedby, ')
          ..write('fixapplied: $fixapplied, ')
          ..write('referencenumber: $referencenumber, ')
          ..write('cost: $cost, ')
          ..write('inhouse: $inhouse, ')
          ..write('contactused: $contactused, ')
          ..write('timefrom: $timefrom, ')
          ..write('timeto: $timeto, ')
          ..write('planned: $planned, ')
          ..write('status: $status, ')
          ..write('technician: $technician, ')
          ..write('datefrom: $datefrom, ')
          ..write('dateto: $dateto, ')
          ..write('logdate: $logdate, ')
          ..write('schedeventid: $schedeventid, ')
          ..write('downtime: $downtime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        eventid,
        machineid,
        type,
        faultdescription,
        date,
        loggedby,
        reportedby,
        fixapplied,
        referencenumber,
        cost,
        inhouse,
        contactused,
        timefrom,
        timeto,
        planned,
        status,
        technician,
        datefrom,
        dateto,
        logdate,
        schedeventid,
        downtime
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenanceEvent &&
          other.eventid == this.eventid &&
          other.machineid == this.machineid &&
          other.type == this.type &&
          other.faultdescription == this.faultdescription &&
          other.date == this.date &&
          other.loggedby == this.loggedby &&
          other.reportedby == this.reportedby &&
          other.fixapplied == this.fixapplied &&
          other.referencenumber == this.referencenumber &&
          other.cost == this.cost &&
          other.inhouse == this.inhouse &&
          other.contactused == this.contactused &&
          other.timefrom == this.timefrom &&
          other.timeto == this.timeto &&
          other.planned == this.planned &&
          other.status == this.status &&
          other.technician == this.technician &&
          other.datefrom == this.datefrom &&
          other.dateto == this.dateto &&
          other.logdate == this.logdate &&
          other.schedeventid == this.schedeventid &&
          other.downtime == this.downtime);
}

class MaintenanceEventsCompanion extends UpdateCompanion<MaintenanceEvent> {
  final Value<int?> eventid;
  final Value<int?> machineid;
  final Value<String?> type;
  final Value<String?> faultdescription;
  final Value<PgDateTime?> date;
  final Value<String?> loggedby;
  final Value<String?> reportedby;
  final Value<String?> fixapplied;
  final Value<String?> referencenumber;
  final Value<double?> cost;
  final Value<String?> inhouse;
  final Value<String?> contactused;
  final Value<String?> timefrom;
  final Value<String?> timeto;
  final Value<String?> planned;
  final Value<String?> status;
  final Value<String?> technician;
  final Value<PgDateTime?> datefrom;
  final Value<PgDateTime?> dateto;
  final Value<PgDateTime?> logdate;
  final Value<int?> schedeventid;
  final Value<double?> downtime;
  final Value<int> rowid;
  const MaintenanceEventsCompanion({
    this.eventid = const Value.absent(),
    this.machineid = const Value.absent(),
    this.type = const Value.absent(),
    this.faultdescription = const Value.absent(),
    this.date = const Value.absent(),
    this.loggedby = const Value.absent(),
    this.reportedby = const Value.absent(),
    this.fixapplied = const Value.absent(),
    this.referencenumber = const Value.absent(),
    this.cost = const Value.absent(),
    this.inhouse = const Value.absent(),
    this.contactused = const Value.absent(),
    this.timefrom = const Value.absent(),
    this.timeto = const Value.absent(),
    this.planned = const Value.absent(),
    this.status = const Value.absent(),
    this.technician = const Value.absent(),
    this.datefrom = const Value.absent(),
    this.dateto = const Value.absent(),
    this.logdate = const Value.absent(),
    this.schedeventid = const Value.absent(),
    this.downtime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MaintenanceEventsCompanion.insert({
    this.eventid = const Value.absent(),
    this.machineid = const Value.absent(),
    this.type = const Value.absent(),
    this.faultdescription = const Value.absent(),
    this.date = const Value.absent(),
    this.loggedby = const Value.absent(),
    this.reportedby = const Value.absent(),
    this.fixapplied = const Value.absent(),
    this.referencenumber = const Value.absent(),
    this.cost = const Value.absent(),
    this.inhouse = const Value.absent(),
    this.contactused = const Value.absent(),
    this.timefrom = const Value.absent(),
    this.timeto = const Value.absent(),
    this.planned = const Value.absent(),
    this.status = const Value.absent(),
    this.technician = const Value.absent(),
    this.datefrom = const Value.absent(),
    this.dateto = const Value.absent(),
    this.logdate = const Value.absent(),
    this.schedeventid = const Value.absent(),
    this.downtime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<MaintenanceEvent> custom({
    Expression<int>? eventid,
    Expression<int>? machineid,
    Expression<String>? type,
    Expression<String>? faultdescription,
    Expression<PgDateTime>? date,
    Expression<String>? loggedby,
    Expression<String>? reportedby,
    Expression<String>? fixapplied,
    Expression<String>? referencenumber,
    Expression<double>? cost,
    Expression<String>? inhouse,
    Expression<String>? contactused,
    Expression<String>? timefrom,
    Expression<String>? timeto,
    Expression<String>? planned,
    Expression<String>? status,
    Expression<String>? technician,
    Expression<PgDateTime>? datefrom,
    Expression<PgDateTime>? dateto,
    Expression<PgDateTime>? logdate,
    Expression<int>? schedeventid,
    Expression<double>? downtime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (eventid != null) 'eventid': eventid,
      if (machineid != null) 'machineid': machineid,
      if (type != null) 'type': type,
      if (faultdescription != null) 'faultdescription': faultdescription,
      if (date != null) 'date': date,
      if (loggedby != null) 'loggedby': loggedby,
      if (reportedby != null) 'reportedby': reportedby,
      if (fixapplied != null) 'fixapplied': fixapplied,
      if (referencenumber != null) 'referencenumber': referencenumber,
      if (cost != null) 'cost': cost,
      if (inhouse != null) 'inhouse': inhouse,
      if (contactused != null) 'contactused': contactused,
      if (timefrom != null) 'timefrom': timefrom,
      if (timeto != null) 'timeto': timeto,
      if (planned != null) 'planned': planned,
      if (status != null) 'status': status,
      if (technician != null) 'technician': technician,
      if (datefrom != null) 'datefrom': datefrom,
      if (dateto != null) 'dateto': dateto,
      if (logdate != null) 'logdate': logdate,
      if (schedeventid != null) 'schedeventid': schedeventid,
      if (downtime != null) 'downtime': downtime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MaintenanceEventsCompanion copyWith(
      {Value<int?>? eventid,
      Value<int?>? machineid,
      Value<String?>? type,
      Value<String?>? faultdescription,
      Value<PgDateTime?>? date,
      Value<String?>? loggedby,
      Value<String?>? reportedby,
      Value<String?>? fixapplied,
      Value<String?>? referencenumber,
      Value<double?>? cost,
      Value<String?>? inhouse,
      Value<String?>? contactused,
      Value<String?>? timefrom,
      Value<String?>? timeto,
      Value<String?>? planned,
      Value<String?>? status,
      Value<String?>? technician,
      Value<PgDateTime?>? datefrom,
      Value<PgDateTime?>? dateto,
      Value<PgDateTime?>? logdate,
      Value<int?>? schedeventid,
      Value<double?>? downtime,
      Value<int>? rowid}) {
    return MaintenanceEventsCompanion(
      eventid: eventid ?? this.eventid,
      machineid: machineid ?? this.machineid,
      type: type ?? this.type,
      faultdescription: faultdescription ?? this.faultdescription,
      date: date ?? this.date,
      loggedby: loggedby ?? this.loggedby,
      reportedby: reportedby ?? this.reportedby,
      fixapplied: fixapplied ?? this.fixapplied,
      referencenumber: referencenumber ?? this.referencenumber,
      cost: cost ?? this.cost,
      inhouse: inhouse ?? this.inhouse,
      contactused: contactused ?? this.contactused,
      timefrom: timefrom ?? this.timefrom,
      timeto: timeto ?? this.timeto,
      planned: planned ?? this.planned,
      status: status ?? this.status,
      technician: technician ?? this.technician,
      datefrom: datefrom ?? this.datefrom,
      dateto: dateto ?? this.dateto,
      logdate: logdate ?? this.logdate,
      schedeventid: schedeventid ?? this.schedeventid,
      downtime: downtime ?? this.downtime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (eventid.present) {
      map['eventid'] = Variable<int>(eventid.value);
    }
    if (machineid.present) {
      map['machineid'] = Variable<int>(machineid.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (faultdescription.present) {
      map['faultdescription'] = Variable<String>(faultdescription.value);
    }
    if (date.present) {
      map['date'] =
          Variable<PgDateTime>(date.value, timestampWithoutTimezoneType);
    }
    if (loggedby.present) {
      map['loggedby'] = Variable<String>(loggedby.value);
    }
    if (reportedby.present) {
      map['reportedby'] = Variable<String>(reportedby.value);
    }
    if (fixapplied.present) {
      map['fixapplied'] = Variable<String>(fixapplied.value);
    }
    if (referencenumber.present) {
      map['referencenumber'] = Variable<String>(referencenumber.value);
    }
    if (cost.present) {
      map['cost'] = Variable<double>(cost.value, numericType);
    }
    if (inhouse.present) {
      map['inhouse'] = Variable<String>(inhouse.value);
    }
    if (contactused.present) {
      map['contactused'] = Variable<String>(contactused.value);
    }
    if (timefrom.present) {
      map['timefrom'] = Variable<String>(timefrom.value);
    }
    if (timeto.present) {
      map['timeto'] = Variable<String>(timeto.value);
    }
    if (planned.present) {
      map['planned'] = Variable<String>(planned.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (technician.present) {
      map['technician'] = Variable<String>(technician.value);
    }
    if (datefrom.present) {
      map['datefrom'] =
          Variable<PgDateTime>(datefrom.value, timestampWithoutTimezoneType);
    }
    if (dateto.present) {
      map['dateto'] =
          Variable<PgDateTime>(dateto.value, timestampWithoutTimezoneType);
    }
    if (logdate.present) {
      map['logdate'] =
          Variable<PgDateTime>(logdate.value, timestampWithoutTimezoneType);
    }
    if (schedeventid.present) {
      map['schedeventid'] = Variable<int>(schedeventid.value);
    }
    if (downtime.present) {
      map['downtime'] = Variable<double>(downtime.value, numericType);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenanceEventsCompanion(')
          ..write('eventid: $eventid, ')
          ..write('machineid: $machineid, ')
          ..write('type: $type, ')
          ..write('faultdescription: $faultdescription, ')
          ..write('date: $date, ')
          ..write('loggedby: $loggedby, ')
          ..write('reportedby: $reportedby, ')
          ..write('fixapplied: $fixapplied, ')
          ..write('referencenumber: $referencenumber, ')
          ..write('cost: $cost, ')
          ..write('inhouse: $inhouse, ')
          ..write('contactused: $contactused, ')
          ..write('timefrom: $timefrom, ')
          ..write('timeto: $timeto, ')
          ..write('planned: $planned, ')
          ..write('status: $status, ')
          ..write('technician: $technician, ')
          ..write('datefrom: $datefrom, ')
          ..write('dateto: $dateto, ')
          ..write('logdate: $logdate, ')
          ..write('schedeventid: $schedeventid, ')
          ..write('downtime: $downtime, ')
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
  late final $MaintenanceEventsTable maintenanceEvents =
      $MaintenanceEventsTable(this);
  late final CertusInvisionDao certusInvisionDao =
      CertusInvisionDao(this as CertusInvisionDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftDatabaseTypes, maintenanceEvents];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$DriftDatabaseTypesTableCreateCompanionBuilder
    = DriftDatabaseTypesCompanion Function({
  Value<UuidValue?> id,
  Value<Object?> json,
  Value<DateTime?> date,
  Value<double?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  Value<int?> autoIncrement,
  Value<String?> characterVar,
  Value<String?> textVar,
});
typedef $$DriftDatabaseTypesTableUpdateCompanionBuilder
    = DriftDatabaseTypesCompanion Function({
  Value<UuidValue?> id,
  Value<Object?> json,
  Value<DateTime?> date,
  Value<double?> number,
  Value<PgDateTime?> timestamp,
  Value<bool?> boolValue,
  Value<String?> xml,
  Value<int?> autoIncrement,
  Value<String?> characterVar,
  Value<String?> textVar,
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

  ColumnFilters<DateTime> get date => $composableBuilder(
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

  ColumnFilters<String> get characterVar => $composableBuilder(
      column: $table.characterVar, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get textVar => $composableBuilder(
      column: $table.textVar, builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<DateTime> get date => $composableBuilder(
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

  ColumnOrderings<String> get characterVar => $composableBuilder(
      column: $table.characterVar,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get textVar => $composableBuilder(
      column: $table.textVar, builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<DateTime> get date =>
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

  GeneratedColumn<String> get characterVar => $composableBuilder(
      column: $table.characterVar, builder: (column) => column);

  GeneratedColumn<String> get textVar =>
      $composableBuilder(column: $table.textVar, builder: (column) => column);
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
            Value<DateTime?> date = const Value.absent(),
            Value<double?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            Value<int?> autoIncrement = const Value.absent(),
            Value<String?> characterVar = const Value.absent(),
            Value<String?> textVar = const Value.absent(),
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
            characterVar: characterVar,
            textVar: textVar,
          ),
          createCompanionCallback: ({
            Value<UuidValue?> id = const Value.absent(),
            Value<Object?> json = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<double?> number = const Value.absent(),
            Value<PgDateTime?> timestamp = const Value.absent(),
            Value<bool?> boolValue = const Value.absent(),
            Value<String?> xml = const Value.absent(),
            Value<int?> autoIncrement = const Value.absent(),
            Value<String?> characterVar = const Value.absent(),
            Value<String?> textVar = const Value.absent(),
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
            characterVar: characterVar,
            textVar: textVar,
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
typedef $$MaintenanceEventsTableCreateCompanionBuilder
    = MaintenanceEventsCompanion Function({
  Value<int?> eventid,
  Value<int?> machineid,
  Value<String?> type,
  Value<String?> faultdescription,
  Value<PgDateTime?> date,
  Value<String?> loggedby,
  Value<String?> reportedby,
  Value<String?> fixapplied,
  Value<String?> referencenumber,
  Value<double?> cost,
  Value<String?> inhouse,
  Value<String?> contactused,
  Value<String?> timefrom,
  Value<String?> timeto,
  Value<String?> planned,
  Value<String?> status,
  Value<String?> technician,
  Value<PgDateTime?> datefrom,
  Value<PgDateTime?> dateto,
  Value<PgDateTime?> logdate,
  Value<int?> schedeventid,
  Value<double?> downtime,
  Value<int> rowid,
});
typedef $$MaintenanceEventsTableUpdateCompanionBuilder
    = MaintenanceEventsCompanion Function({
  Value<int?> eventid,
  Value<int?> machineid,
  Value<String?> type,
  Value<String?> faultdescription,
  Value<PgDateTime?> date,
  Value<String?> loggedby,
  Value<String?> reportedby,
  Value<String?> fixapplied,
  Value<String?> referencenumber,
  Value<double?> cost,
  Value<String?> inhouse,
  Value<String?> contactused,
  Value<String?> timefrom,
  Value<String?> timeto,
  Value<String?> planned,
  Value<String?> status,
  Value<String?> technician,
  Value<PgDateTime?> datefrom,
  Value<PgDateTime?> dateto,
  Value<PgDateTime?> logdate,
  Value<int?> schedeventid,
  Value<double?> downtime,
  Value<int> rowid,
});

class $$MaintenanceEventsTableFilterComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenanceEventsTable> {
  $$MaintenanceEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get eventid => $composableBuilder(
      column: $table.eventid, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get machineid => $composableBuilder(
      column: $table.machineid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get faultdescription => $composableBuilder(
      column: $table.faultdescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get loggedby => $composableBuilder(
      column: $table.loggedby, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reportedby => $composableBuilder(
      column: $table.reportedby, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fixapplied => $composableBuilder(
      column: $table.fixapplied, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referencenumber => $composableBuilder(
      column: $table.referencenumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inhouse => $composableBuilder(
      column: $table.inhouse, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactused => $composableBuilder(
      column: $table.contactused, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get timefrom => $composableBuilder(
      column: $table.timefrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get timeto => $composableBuilder(
      column: $table.timeto, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get planned => $composableBuilder(
      column: $table.planned, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get datefrom => $composableBuilder(
      column: $table.datefrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get dateto => $composableBuilder(
      column: $table.dateto, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get logdate => $composableBuilder(
      column: $table.logdate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get schedeventid => $composableBuilder(
      column: $table.schedeventid, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get downtime => $composableBuilder(
      column: $table.downtime, builder: (column) => ColumnFilters(column));
}

class $$MaintenanceEventsTableOrderingComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenanceEventsTable> {
  $$MaintenanceEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get eventid => $composableBuilder(
      column: $table.eventid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get machineid => $composableBuilder(
      column: $table.machineid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get faultdescription => $composableBuilder(
      column: $table.faultdescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get loggedby => $composableBuilder(
      column: $table.loggedby, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reportedby => $composableBuilder(
      column: $table.reportedby, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fixapplied => $composableBuilder(
      column: $table.fixapplied, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referencenumber => $composableBuilder(
      column: $table.referencenumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inhouse => $composableBuilder(
      column: $table.inhouse, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactused => $composableBuilder(
      column: $table.contactused, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get timefrom => $composableBuilder(
      column: $table.timefrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get timeto => $composableBuilder(
      column: $table.timeto, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get planned => $composableBuilder(
      column: $table.planned, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get datefrom => $composableBuilder(
      column: $table.datefrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get dateto => $composableBuilder(
      column: $table.dateto, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get logdate => $composableBuilder(
      column: $table.logdate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get schedeventid => $composableBuilder(
      column: $table.schedeventid,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get downtime => $composableBuilder(
      column: $table.downtime, builder: (column) => ColumnOrderings(column));
}

class $$MaintenanceEventsTableAnnotationComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenanceEventsTable> {
  $$MaintenanceEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get eventid =>
      $composableBuilder(column: $table.eventid, builder: (column) => column);

  GeneratedColumn<int> get machineid =>
      $composableBuilder(column: $table.machineid, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get faultdescription => $composableBuilder(
      column: $table.faultdescription, builder: (column) => column);

  GeneratedColumn<PgDateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get loggedby =>
      $composableBuilder(column: $table.loggedby, builder: (column) => column);

  GeneratedColumn<String> get reportedby => $composableBuilder(
      column: $table.reportedby, builder: (column) => column);

  GeneratedColumn<String> get fixapplied => $composableBuilder(
      column: $table.fixapplied, builder: (column) => column);

  GeneratedColumn<String> get referencenumber => $composableBuilder(
      column: $table.referencenumber, builder: (column) => column);

  GeneratedColumn<double> get cost =>
      $composableBuilder(column: $table.cost, builder: (column) => column);

  GeneratedColumn<String> get inhouse =>
      $composableBuilder(column: $table.inhouse, builder: (column) => column);

  GeneratedColumn<String> get contactused => $composableBuilder(
      column: $table.contactused, builder: (column) => column);

  GeneratedColumn<String> get timefrom =>
      $composableBuilder(column: $table.timefrom, builder: (column) => column);

  GeneratedColumn<String> get timeto =>
      $composableBuilder(column: $table.timeto, builder: (column) => column);

  GeneratedColumn<String> get planned =>
      $composableBuilder(column: $table.planned, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => column);

  GeneratedColumn<PgDateTime> get datefrom =>
      $composableBuilder(column: $table.datefrom, builder: (column) => column);

  GeneratedColumn<PgDateTime> get dateto =>
      $composableBuilder(column: $table.dateto, builder: (column) => column);

  GeneratedColumn<PgDateTime> get logdate =>
      $composableBuilder(column: $table.logdate, builder: (column) => column);

  GeneratedColumn<int> get schedeventid => $composableBuilder(
      column: $table.schedeventid, builder: (column) => column);

  GeneratedColumn<double> get downtime =>
      $composableBuilder(column: $table.downtime, builder: (column) => column);
}

class $$MaintenanceEventsTableTableManager extends RootTableManager<
    _$CertusInvisionDatabase,
    $MaintenanceEventsTable,
    MaintenanceEvent,
    $$MaintenanceEventsTableFilterComposer,
    $$MaintenanceEventsTableOrderingComposer,
    $$MaintenanceEventsTableAnnotationComposer,
    $$MaintenanceEventsTableCreateCompanionBuilder,
    $$MaintenanceEventsTableUpdateCompanionBuilder,
    (
      MaintenanceEvent,
      BaseReferences<_$CertusInvisionDatabase, $MaintenanceEventsTable,
          MaintenanceEvent>
    ),
    MaintenanceEvent,
    PrefetchHooks Function()> {
  $$MaintenanceEventsTableTableManager(
      _$CertusInvisionDatabase db, $MaintenanceEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaintenanceEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaintenanceEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaintenanceEventsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> eventid = const Value.absent(),
            Value<int?> machineid = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> faultdescription = const Value.absent(),
            Value<PgDateTime?> date = const Value.absent(),
            Value<String?> loggedby = const Value.absent(),
            Value<String?> reportedby = const Value.absent(),
            Value<String?> fixapplied = const Value.absent(),
            Value<String?> referencenumber = const Value.absent(),
            Value<double?> cost = const Value.absent(),
            Value<String?> inhouse = const Value.absent(),
            Value<String?> contactused = const Value.absent(),
            Value<String?> timefrom = const Value.absent(),
            Value<String?> timeto = const Value.absent(),
            Value<String?> planned = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<String?> technician = const Value.absent(),
            Value<PgDateTime?> datefrom = const Value.absent(),
            Value<PgDateTime?> dateto = const Value.absent(),
            Value<PgDateTime?> logdate = const Value.absent(),
            Value<int?> schedeventid = const Value.absent(),
            Value<double?> downtime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MaintenanceEventsCompanion(
            eventid: eventid,
            machineid: machineid,
            type: type,
            faultdescription: faultdescription,
            date: date,
            loggedby: loggedby,
            reportedby: reportedby,
            fixapplied: fixapplied,
            referencenumber: referencenumber,
            cost: cost,
            inhouse: inhouse,
            contactused: contactused,
            timefrom: timefrom,
            timeto: timeto,
            planned: planned,
            status: status,
            technician: technician,
            datefrom: datefrom,
            dateto: dateto,
            logdate: logdate,
            schedeventid: schedeventid,
            downtime: downtime,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<int?> eventid = const Value.absent(),
            Value<int?> machineid = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> faultdescription = const Value.absent(),
            Value<PgDateTime?> date = const Value.absent(),
            Value<String?> loggedby = const Value.absent(),
            Value<String?> reportedby = const Value.absent(),
            Value<String?> fixapplied = const Value.absent(),
            Value<String?> referencenumber = const Value.absent(),
            Value<double?> cost = const Value.absent(),
            Value<String?> inhouse = const Value.absent(),
            Value<String?> contactused = const Value.absent(),
            Value<String?> timefrom = const Value.absent(),
            Value<String?> timeto = const Value.absent(),
            Value<String?> planned = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<String?> technician = const Value.absent(),
            Value<PgDateTime?> datefrom = const Value.absent(),
            Value<PgDateTime?> dateto = const Value.absent(),
            Value<PgDateTime?> logdate = const Value.absent(),
            Value<int?> schedeventid = const Value.absent(),
            Value<double?> downtime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MaintenanceEventsCompanion.insert(
            eventid: eventid,
            machineid: machineid,
            type: type,
            faultdescription: faultdescription,
            date: date,
            loggedby: loggedby,
            reportedby: reportedby,
            fixapplied: fixapplied,
            referencenumber: referencenumber,
            cost: cost,
            inhouse: inhouse,
            contactused: contactused,
            timefrom: timefrom,
            timeto: timeto,
            planned: planned,
            status: status,
            technician: technician,
            datefrom: datefrom,
            dateto: dateto,
            logdate: logdate,
            schedeventid: schedeventid,
            downtime: downtime,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaintenanceEventsTableProcessedTableManager = ProcessedTableManager<
    _$CertusInvisionDatabase,
    $MaintenanceEventsTable,
    MaintenanceEvent,
    $$MaintenanceEventsTableFilterComposer,
    $$MaintenanceEventsTableOrderingComposer,
    $$MaintenanceEventsTableAnnotationComposer,
    $$MaintenanceEventsTableCreateCompanionBuilder,
    $$MaintenanceEventsTableUpdateCompanionBuilder,
    (
      MaintenanceEvent,
      BaseReferences<_$CertusInvisionDatabase, $MaintenanceEventsTable,
          MaintenanceEvent>
    ),
    MaintenanceEvent,
    PrefetchHooks Function()>;

class $CertusInvisionDatabaseManager {
  final _$CertusInvisionDatabase _db;
  $CertusInvisionDatabaseManager(this._db);
  $$DriftDatabaseTypesTableTableManager get driftDatabaseTypes =>
      $$DriftDatabaseTypesTableTableManager(_db, _db.driftDatabaseTypes);
  $$MaintenanceEventsTableTableManager get maintenanceEvents =>
      $$MaintenanceEventsTableTableManager(_db, _db.maintenanceEvents);
}
