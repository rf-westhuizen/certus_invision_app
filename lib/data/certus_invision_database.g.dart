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
  late final GeneratedColumn<int> eventId = GeneratedColumn<int>(
      'eventid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> machineId = GeneratedColumn<int>(
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
  late final GeneratedColumn<String> faultDescription = GeneratedColumn<String>(
      'faultdescription', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> date = GeneratedColumn<PgDateTime>(
      'date', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> loggedBy = GeneratedColumn<String>(
      'loggedby', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> reportedBy = GeneratedColumn<String>(
      'reportedby', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> fixApplied = GeneratedColumn<String>(
      'fixapplied', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> referenceNumber = GeneratedColumn<String>(
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
  late final GeneratedColumn<String> inHouse = GeneratedColumn<String>(
      'inhouse', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> contactUsed = GeneratedColumn<String>(
      'contactused', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> timeFrom = GeneratedColumn<String>(
      'timefrom', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> timeTo = GeneratedColumn<String>(
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
  late final GeneratedColumn<PgDateTime> dateFrom = GeneratedColumn<PgDateTime>(
      'datefrom', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> dateTo = GeneratedColumn<PgDateTime>(
      'dateto', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<PgDateTime> logDate = GeneratedColumn<PgDateTime>(
      'logdate', aliasedName, true,
      type: timestampWithoutTimezoneType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> schedEventId = GeneratedColumn<int>(
      'schedeventid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<double> downtime = GeneratedColumn<double>(
      'downtime', aliasedName, true,
      type: numericType, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        eventId,
        machineId,
        type,
        faultDescription,
        date,
        loggedBy,
        reportedBy,
        fixApplied,
        referenceNumber,
        cost,
        inHouse,
        contactUsed,
        timeFrom,
        timeTo,
        planned,
        status,
        technician,
        dateFrom,
        dateTo,
        logDate,
        schedEventId,
        downtime
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenanceeventsa';
  @override
  Set<GeneratedColumn> get $primaryKey => {eventId};
  @override
  MaintenanceEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenanceEvent(
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}eventid']),
      machineId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}machineid']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      faultDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}faultdescription']),
      date: attachedDatabase.typeMapping
          .read(timestampWithoutTimezoneType, data['${effectivePrefix}date']),
      loggedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}loggedby']),
      reportedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reportedby']),
      fixApplied: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fixapplied']),
      referenceNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}referencenumber']),
      cost: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}cost']),
      inHouse: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inhouse']),
      contactUsed: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contactused']),
      timeFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timefrom']),
      timeTo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timeto']),
      planned: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}planned']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      technician: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}technician']),
      dateFrom: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}datefrom']),
      dateTo: attachedDatabase.typeMapping
          .read(timestampWithoutTimezoneType, data['${effectivePrefix}dateto']),
      logDate: attachedDatabase.typeMapping.read(
          timestampWithoutTimezoneType, data['${effectivePrefix}logdate']),
      schedEventId: attachedDatabase.typeMapping
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
  final int? eventId;
  final int? machineId;
  final String? type;
  final String? faultDescription;
  final PgDateTime? date;
  final String? loggedBy;
  final String? reportedBy;
  final String? fixApplied;
  final String? referenceNumber;
  final double? cost;
  final String? inHouse;
  final String? contactUsed;
  final String? timeFrom;
  final String? timeTo;
  final String? planned;
  final String? status;
  final String? technician;
  final PgDateTime? dateFrom;
  final PgDateTime? dateTo;
  final PgDateTime? logDate;
  final int? schedEventId;
  final double? downtime;
  const MaintenanceEvent(
      {this.eventId,
      this.machineId,
      this.type,
      this.faultDescription,
      this.date,
      this.loggedBy,
      this.reportedBy,
      this.fixApplied,
      this.referenceNumber,
      this.cost,
      this.inHouse,
      this.contactUsed,
      this.timeFrom,
      this.timeTo,
      this.planned,
      this.status,
      this.technician,
      this.dateFrom,
      this.dateTo,
      this.logDate,
      this.schedEventId,
      this.downtime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || eventId != null) {
      map['eventid'] = Variable<int>(eventId);
    }
    if (!nullToAbsent || machineId != null) {
      map['machineid'] = Variable<int>(machineId);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || faultDescription != null) {
      map['faultdescription'] = Variable<String>(faultDescription);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<PgDateTime>(date, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || loggedBy != null) {
      map['loggedby'] = Variable<String>(loggedBy);
    }
    if (!nullToAbsent || reportedBy != null) {
      map['reportedby'] = Variable<String>(reportedBy);
    }
    if (!nullToAbsent || fixApplied != null) {
      map['fixapplied'] = Variable<String>(fixApplied);
    }
    if (!nullToAbsent || referenceNumber != null) {
      map['referencenumber'] = Variable<String>(referenceNumber);
    }
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<double>(cost, numericType);
    }
    if (!nullToAbsent || inHouse != null) {
      map['inhouse'] = Variable<String>(inHouse);
    }
    if (!nullToAbsent || contactUsed != null) {
      map['contactused'] = Variable<String>(contactUsed);
    }
    if (!nullToAbsent || timeFrom != null) {
      map['timefrom'] = Variable<String>(timeFrom);
    }
    if (!nullToAbsent || timeTo != null) {
      map['timeto'] = Variable<String>(timeTo);
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
    if (!nullToAbsent || dateFrom != null) {
      map['datefrom'] =
          Variable<PgDateTime>(dateFrom, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || dateTo != null) {
      map['dateto'] =
          Variable<PgDateTime>(dateTo, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || logDate != null) {
      map['logdate'] =
          Variable<PgDateTime>(logDate, timestampWithoutTimezoneType);
    }
    if (!nullToAbsent || schedEventId != null) {
      map['schedeventid'] = Variable<int>(schedEventId);
    }
    if (!nullToAbsent || downtime != null) {
      map['downtime'] = Variable<double>(downtime, numericType);
    }
    return map;
  }

  MaintenanceEventsCompanion toCompanion(bool nullToAbsent) {
    return MaintenanceEventsCompanion(
      eventId: eventId == null && nullToAbsent
          ? const Value.absent()
          : Value(eventId),
      machineId: machineId == null && nullToAbsent
          ? const Value.absent()
          : Value(machineId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      faultDescription: faultDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(faultDescription),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      loggedBy: loggedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(loggedBy),
      reportedBy: reportedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedBy),
      fixApplied: fixApplied == null && nullToAbsent
          ? const Value.absent()
          : Value(fixApplied),
      referenceNumber: referenceNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceNumber),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
      inHouse: inHouse == null && nullToAbsent
          ? const Value.absent()
          : Value(inHouse),
      contactUsed: contactUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(contactUsed),
      timeFrom: timeFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(timeFrom),
      timeTo:
          timeTo == null && nullToAbsent ? const Value.absent() : Value(timeTo),
      planned: planned == null && nullToAbsent
          ? const Value.absent()
          : Value(planned),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      technician: technician == null && nullToAbsent
          ? const Value.absent()
          : Value(technician),
      dateFrom: dateFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(dateFrom),
      dateTo:
          dateTo == null && nullToAbsent ? const Value.absent() : Value(dateTo),
      logDate: logDate == null && nullToAbsent
          ? const Value.absent()
          : Value(logDate),
      schedEventId: schedEventId == null && nullToAbsent
          ? const Value.absent()
          : Value(schedEventId),
      downtime: downtime == null && nullToAbsent
          ? const Value.absent()
          : Value(downtime),
    );
  }

  factory MaintenanceEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenanceEvent(
      eventId: serializer.fromJson<int?>(json['eventId']),
      machineId: serializer.fromJson<int?>(json['machineId']),
      type: serializer.fromJson<String?>(json['type']),
      faultDescription: serializer.fromJson<String?>(json['faultDescription']),
      date: serializer.fromJson<PgDateTime?>(json['date']),
      loggedBy: serializer.fromJson<String?>(json['loggedBy']),
      reportedBy: serializer.fromJson<String?>(json['reportedBy']),
      fixApplied: serializer.fromJson<String?>(json['fixApplied']),
      referenceNumber: serializer.fromJson<String?>(json['referenceNumber']),
      cost: serializer.fromJson<double?>(json['cost']),
      inHouse: serializer.fromJson<String?>(json['inHouse']),
      contactUsed: serializer.fromJson<String?>(json['contactUsed']),
      timeFrom: serializer.fromJson<String?>(json['timeFrom']),
      timeTo: serializer.fromJson<String?>(json['timeTo']),
      planned: serializer.fromJson<String?>(json['planned']),
      status: serializer.fromJson<String?>(json['status']),
      technician: serializer.fromJson<String?>(json['technician']),
      dateFrom: serializer.fromJson<PgDateTime?>(json['dateFrom']),
      dateTo: serializer.fromJson<PgDateTime?>(json['dateTo']),
      logDate: serializer.fromJson<PgDateTime?>(json['logDate']),
      schedEventId: serializer.fromJson<int?>(json['schedEventId']),
      downtime: serializer.fromJson<double?>(json['downtime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'eventId': serializer.toJson<int?>(eventId),
      'machineId': serializer.toJson<int?>(machineId),
      'type': serializer.toJson<String?>(type),
      'faultDescription': serializer.toJson<String?>(faultDescription),
      'date': serializer.toJson<PgDateTime?>(date),
      'loggedBy': serializer.toJson<String?>(loggedBy),
      'reportedBy': serializer.toJson<String?>(reportedBy),
      'fixApplied': serializer.toJson<String?>(fixApplied),
      'referenceNumber': serializer.toJson<String?>(referenceNumber),
      'cost': serializer.toJson<double?>(cost),
      'inHouse': serializer.toJson<String?>(inHouse),
      'contactUsed': serializer.toJson<String?>(contactUsed),
      'timeFrom': serializer.toJson<String?>(timeFrom),
      'timeTo': serializer.toJson<String?>(timeTo),
      'planned': serializer.toJson<String?>(planned),
      'status': serializer.toJson<String?>(status),
      'technician': serializer.toJson<String?>(technician),
      'dateFrom': serializer.toJson<PgDateTime?>(dateFrom),
      'dateTo': serializer.toJson<PgDateTime?>(dateTo),
      'logDate': serializer.toJson<PgDateTime?>(logDate),
      'schedEventId': serializer.toJson<int?>(schedEventId),
      'downtime': serializer.toJson<double?>(downtime),
    };
  }

  MaintenanceEvent copyWith(
          {int? eventId,
          int? machineId,
          String? type,
          String? faultDescription,
          PgDateTime? date,
          String? loggedBy,
          String? reportedBy,
          String? fixApplied,
          String? referenceNumber,
          double? cost,
          String? inHouse,
          String? contactUsed,
          String? timeFrom,
          String? timeTo,
          String? planned,
          String? status,
          String? technician,
          PgDateTime? dateFrom,
          PgDateTime? dateTo,
          PgDateTime? logDate,
          int? schedEventId,
          double? downtime}) =>
      MaintenanceEvent(
        eventId: eventId ?? this.eventId,
        machineId: machineId ?? this.machineId,
        type: type ?? this.type,
        faultDescription: faultDescription ?? this.faultDescription,
        date: date ?? this.date,
        loggedBy: loggedBy ?? this.loggedBy,
        reportedBy: reportedBy ?? this.reportedBy,
        fixApplied: fixApplied ?? this.fixApplied,
        referenceNumber: referenceNumber ?? this.referenceNumber,
        cost: cost ?? this.cost,
        inHouse: inHouse ?? this.inHouse,
        contactUsed: contactUsed ?? this.contactUsed,
        timeFrom: timeFrom ?? this.timeFrom,
        timeTo: timeTo ?? this.timeTo,
        planned: planned ?? this.planned,
        status: status ?? this.status,
        technician: technician ?? this.technician,
        dateFrom: dateFrom ?? this.dateFrom,
        dateTo: dateTo ?? this.dateTo,
        logDate: logDate ?? this.logDate,
        schedEventId: schedEventId ?? this.schedEventId,
        downtime: downtime ?? this.downtime,
      );
  MaintenanceEvent copyWithCompanion(MaintenanceEventsCompanion data) {
    return MaintenanceEvent(
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      machineId: data.machineId.present ? data.machineId.value : this.machineId,
      type: data.type.present ? data.type.value : this.type,
      faultDescription: data.faultDescription.present
          ? data.faultDescription.value
          : this.faultDescription,
      date: data.date.present ? data.date.value : this.date,
      loggedBy: data.loggedBy.present ? data.loggedBy.value : this.loggedBy,
      reportedBy:
          data.reportedBy.present ? data.reportedBy.value : this.reportedBy,
      fixApplied:
          data.fixApplied.present ? data.fixApplied.value : this.fixApplied,
      referenceNumber: data.referenceNumber.present
          ? data.referenceNumber.value
          : this.referenceNumber,
      cost: data.cost.present ? data.cost.value : this.cost,
      inHouse: data.inHouse.present ? data.inHouse.value : this.inHouse,
      contactUsed:
          data.contactUsed.present ? data.contactUsed.value : this.contactUsed,
      timeFrom: data.timeFrom.present ? data.timeFrom.value : this.timeFrom,
      timeTo: data.timeTo.present ? data.timeTo.value : this.timeTo,
      planned: data.planned.present ? data.planned.value : this.planned,
      status: data.status.present ? data.status.value : this.status,
      technician:
          data.technician.present ? data.technician.value : this.technician,
      dateFrom: data.dateFrom.present ? data.dateFrom.value : this.dateFrom,
      dateTo: data.dateTo.present ? data.dateTo.value : this.dateTo,
      logDate: data.logDate.present ? data.logDate.value : this.logDate,
      schedEventId: data.schedEventId.present
          ? data.schedEventId.value
          : this.schedEventId,
      downtime: data.downtime.present ? data.downtime.value : this.downtime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaintenanceEvent(')
          ..write('eventId: $eventId, ')
          ..write('machineId: $machineId, ')
          ..write('type: $type, ')
          ..write('faultDescription: $faultDescription, ')
          ..write('date: $date, ')
          ..write('loggedBy: $loggedBy, ')
          ..write('reportedBy: $reportedBy, ')
          ..write('fixApplied: $fixApplied, ')
          ..write('referenceNumber: $referenceNumber, ')
          ..write('cost: $cost, ')
          ..write('inHouse: $inHouse, ')
          ..write('contactUsed: $contactUsed, ')
          ..write('timeFrom: $timeFrom, ')
          ..write('timeTo: $timeTo, ')
          ..write('planned: $planned, ')
          ..write('status: $status, ')
          ..write('technician: $technician, ')
          ..write('dateFrom: $dateFrom, ')
          ..write('dateTo: $dateTo, ')
          ..write('logDate: $logDate, ')
          ..write('schedEventId: $schedEventId, ')
          ..write('downtime: $downtime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        eventId,
        machineId,
        type,
        faultDescription,
        date,
        loggedBy,
        reportedBy,
        fixApplied,
        referenceNumber,
        cost,
        inHouse,
        contactUsed,
        timeFrom,
        timeTo,
        planned,
        status,
        technician,
        dateFrom,
        dateTo,
        logDate,
        schedEventId,
        downtime
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenanceEvent &&
          other.eventId == this.eventId &&
          other.machineId == this.machineId &&
          other.type == this.type &&
          other.faultDescription == this.faultDescription &&
          other.date == this.date &&
          other.loggedBy == this.loggedBy &&
          other.reportedBy == this.reportedBy &&
          other.fixApplied == this.fixApplied &&
          other.referenceNumber == this.referenceNumber &&
          other.cost == this.cost &&
          other.inHouse == this.inHouse &&
          other.contactUsed == this.contactUsed &&
          other.timeFrom == this.timeFrom &&
          other.timeTo == this.timeTo &&
          other.planned == this.planned &&
          other.status == this.status &&
          other.technician == this.technician &&
          other.dateFrom == this.dateFrom &&
          other.dateTo == this.dateTo &&
          other.logDate == this.logDate &&
          other.schedEventId == this.schedEventId &&
          other.downtime == this.downtime);
}

class MaintenanceEventsCompanion extends UpdateCompanion<MaintenanceEvent> {
  final Value<int?> eventId;
  final Value<int?> machineId;
  final Value<String?> type;
  final Value<String?> faultDescription;
  final Value<PgDateTime?> date;
  final Value<String?> loggedBy;
  final Value<String?> reportedBy;
  final Value<String?> fixApplied;
  final Value<String?> referenceNumber;
  final Value<double?> cost;
  final Value<String?> inHouse;
  final Value<String?> contactUsed;
  final Value<String?> timeFrom;
  final Value<String?> timeTo;
  final Value<String?> planned;
  final Value<String?> status;
  final Value<String?> technician;
  final Value<PgDateTime?> dateFrom;
  final Value<PgDateTime?> dateTo;
  final Value<PgDateTime?> logDate;
  final Value<int?> schedEventId;
  final Value<double?> downtime;
  const MaintenanceEventsCompanion({
    this.eventId = const Value.absent(),
    this.machineId = const Value.absent(),
    this.type = const Value.absent(),
    this.faultDescription = const Value.absent(),
    this.date = const Value.absent(),
    this.loggedBy = const Value.absent(),
    this.reportedBy = const Value.absent(),
    this.fixApplied = const Value.absent(),
    this.referenceNumber = const Value.absent(),
    this.cost = const Value.absent(),
    this.inHouse = const Value.absent(),
    this.contactUsed = const Value.absent(),
    this.timeFrom = const Value.absent(),
    this.timeTo = const Value.absent(),
    this.planned = const Value.absent(),
    this.status = const Value.absent(),
    this.technician = const Value.absent(),
    this.dateFrom = const Value.absent(),
    this.dateTo = const Value.absent(),
    this.logDate = const Value.absent(),
    this.schedEventId = const Value.absent(),
    this.downtime = const Value.absent(),
  });
  MaintenanceEventsCompanion.insert({
    this.eventId = const Value.absent(),
    this.machineId = const Value.absent(),
    this.type = const Value.absent(),
    this.faultDescription = const Value.absent(),
    this.date = const Value.absent(),
    this.loggedBy = const Value.absent(),
    this.reportedBy = const Value.absent(),
    this.fixApplied = const Value.absent(),
    this.referenceNumber = const Value.absent(),
    this.cost = const Value.absent(),
    this.inHouse = const Value.absent(),
    this.contactUsed = const Value.absent(),
    this.timeFrom = const Value.absent(),
    this.timeTo = const Value.absent(),
    this.planned = const Value.absent(),
    this.status = const Value.absent(),
    this.technician = const Value.absent(),
    this.dateFrom = const Value.absent(),
    this.dateTo = const Value.absent(),
    this.logDate = const Value.absent(),
    this.schedEventId = const Value.absent(),
    this.downtime = const Value.absent(),
  });
  static Insertable<MaintenanceEvent> custom({
    Expression<int>? eventId,
    Expression<int>? machineId,
    Expression<String>? type,
    Expression<String>? faultDescription,
    Expression<PgDateTime>? date,
    Expression<String>? loggedBy,
    Expression<String>? reportedBy,
    Expression<String>? fixApplied,
    Expression<String>? referenceNumber,
    Expression<double>? cost,
    Expression<String>? inHouse,
    Expression<String>? contactUsed,
    Expression<String>? timeFrom,
    Expression<String>? timeTo,
    Expression<String>? planned,
    Expression<String>? status,
    Expression<String>? technician,
    Expression<PgDateTime>? dateFrom,
    Expression<PgDateTime>? dateTo,
    Expression<PgDateTime>? logDate,
    Expression<int>? schedEventId,
    Expression<double>? downtime,
  }) {
    return RawValuesInsertable({
      if (eventId != null) 'eventid': eventId,
      if (machineId != null) 'machineid': machineId,
      if (type != null) 'type': type,
      if (faultDescription != null) 'faultdescription': faultDescription,
      if (date != null) 'date': date,
      if (loggedBy != null) 'loggedby': loggedBy,
      if (reportedBy != null) 'reportedby': reportedBy,
      if (fixApplied != null) 'fixapplied': fixApplied,
      if (referenceNumber != null) 'referencenumber': referenceNumber,
      if (cost != null) 'cost': cost,
      if (inHouse != null) 'inhouse': inHouse,
      if (contactUsed != null) 'contactused': contactUsed,
      if (timeFrom != null) 'timefrom': timeFrom,
      if (timeTo != null) 'timeto': timeTo,
      if (planned != null) 'planned': planned,
      if (status != null) 'status': status,
      if (technician != null) 'technician': technician,
      if (dateFrom != null) 'datefrom': dateFrom,
      if (dateTo != null) 'dateto': dateTo,
      if (logDate != null) 'logdate': logDate,
      if (schedEventId != null) 'schedeventid': schedEventId,
      if (downtime != null) 'downtime': downtime,
    });
  }

  MaintenanceEventsCompanion copyWith(
      {Value<int?>? eventId,
      Value<int?>? machineId,
      Value<String?>? type,
      Value<String?>? faultDescription,
      Value<PgDateTime?>? date,
      Value<String?>? loggedBy,
      Value<String?>? reportedBy,
      Value<String?>? fixApplied,
      Value<String?>? referenceNumber,
      Value<double?>? cost,
      Value<String?>? inHouse,
      Value<String?>? contactUsed,
      Value<String?>? timeFrom,
      Value<String?>? timeTo,
      Value<String?>? planned,
      Value<String?>? status,
      Value<String?>? technician,
      Value<PgDateTime?>? dateFrom,
      Value<PgDateTime?>? dateTo,
      Value<PgDateTime?>? logDate,
      Value<int?>? schedEventId,
      Value<double?>? downtime}) {
    return MaintenanceEventsCompanion(
      eventId: eventId ?? this.eventId,
      machineId: machineId ?? this.machineId,
      type: type ?? this.type,
      faultDescription: faultDescription ?? this.faultDescription,
      date: date ?? this.date,
      loggedBy: loggedBy ?? this.loggedBy,
      reportedBy: reportedBy ?? this.reportedBy,
      fixApplied: fixApplied ?? this.fixApplied,
      referenceNumber: referenceNumber ?? this.referenceNumber,
      cost: cost ?? this.cost,
      inHouse: inHouse ?? this.inHouse,
      contactUsed: contactUsed ?? this.contactUsed,
      timeFrom: timeFrom ?? this.timeFrom,
      timeTo: timeTo ?? this.timeTo,
      planned: planned ?? this.planned,
      status: status ?? this.status,
      technician: technician ?? this.technician,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      logDate: logDate ?? this.logDate,
      schedEventId: schedEventId ?? this.schedEventId,
      downtime: downtime ?? this.downtime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (eventId.present) {
      map['eventid'] = Variable<int>(eventId.value);
    }
    if (machineId.present) {
      map['machineid'] = Variable<int>(machineId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (faultDescription.present) {
      map['faultdescription'] = Variable<String>(faultDescription.value);
    }
    if (date.present) {
      map['date'] =
          Variable<PgDateTime>(date.value, timestampWithoutTimezoneType);
    }
    if (loggedBy.present) {
      map['loggedby'] = Variable<String>(loggedBy.value);
    }
    if (reportedBy.present) {
      map['reportedby'] = Variable<String>(reportedBy.value);
    }
    if (fixApplied.present) {
      map['fixapplied'] = Variable<String>(fixApplied.value);
    }
    if (referenceNumber.present) {
      map['referencenumber'] = Variable<String>(referenceNumber.value);
    }
    if (cost.present) {
      map['cost'] = Variable<double>(cost.value, numericType);
    }
    if (inHouse.present) {
      map['inhouse'] = Variable<String>(inHouse.value);
    }
    if (contactUsed.present) {
      map['contactused'] = Variable<String>(contactUsed.value);
    }
    if (timeFrom.present) {
      map['timefrom'] = Variable<String>(timeFrom.value);
    }
    if (timeTo.present) {
      map['timeto'] = Variable<String>(timeTo.value);
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
    if (dateFrom.present) {
      map['datefrom'] =
          Variable<PgDateTime>(dateFrom.value, timestampWithoutTimezoneType);
    }
    if (dateTo.present) {
      map['dateto'] =
          Variable<PgDateTime>(dateTo.value, timestampWithoutTimezoneType);
    }
    if (logDate.present) {
      map['logdate'] =
          Variable<PgDateTime>(logDate.value, timestampWithoutTimezoneType);
    }
    if (schedEventId.present) {
      map['schedeventid'] = Variable<int>(schedEventId.value);
    }
    if (downtime.present) {
      map['downtime'] = Variable<double>(downtime.value, numericType);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenanceEventsCompanion(')
          ..write('eventId: $eventId, ')
          ..write('machineId: $machineId, ')
          ..write('type: $type, ')
          ..write('faultDescription: $faultDescription, ')
          ..write('date: $date, ')
          ..write('loggedBy: $loggedBy, ')
          ..write('reportedBy: $reportedBy, ')
          ..write('fixApplied: $fixApplied, ')
          ..write('referenceNumber: $referenceNumber, ')
          ..write('cost: $cost, ')
          ..write('inHouse: $inHouse, ')
          ..write('contactUsed: $contactUsed, ')
          ..write('timeFrom: $timeFrom, ')
          ..write('timeTo: $timeTo, ')
          ..write('planned: $planned, ')
          ..write('status: $status, ')
          ..write('technician: $technician, ')
          ..write('dateFrom: $dateFrom, ')
          ..write('dateTo: $dateTo, ')
          ..write('logDate: $logDate, ')
          ..write('schedEventId: $schedEventId, ')
          ..write('downtime: $downtime')
          ..write(')'))
        .toString();
  }
}

class $MaintenenceContactsTable extends MaintenenceContacts
    with TableInfo<$MaintenenceContactsTable, MaintenenceContact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaintenenceContactsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> contactId = GeneratedColumn<int>(
      'contactid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> machineId = GeneratedColumn<int>(
      'machineid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> contactPerson = GeneratedColumn<String>(
      'contactperson', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> contactNumber = GeneratedColumn<String>(
      'contactnumber', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> alternativeNumber =
      GeneratedColumn<String>('alternativenumber', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> emailAddress = GeneratedColumn<String>(
      'emailadress', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> servicesProvides = GeneratedColumn<String>(
      'servicesprovides', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
      'companyname', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        contactId,
        machineId,
        contactPerson,
        contactNumber,
        alternativeNumber,
        emailAddress,
        servicesProvides,
        companyName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenencecontactsa';
  @override
  Set<GeneratedColumn> get $primaryKey => {contactId};
  @override
  MaintenenceContact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenenceContact(
      contactId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}contactid']),
      machineId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}machineid']),
      contactPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contactperson']),
      contactNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contactnumber']),
      alternativeNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}alternativenumber']),
      emailAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emailadress']),
      servicesProvides: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}servicesprovides']),
      companyName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}companyname']),
    );
  }

  @override
  $MaintenenceContactsTable createAlias(String alias) {
    return $MaintenenceContactsTable(attachedDatabase, alias);
  }
}

class MaintenenceContact extends DataClass
    implements Insertable<MaintenenceContact> {
  final int? contactId;
  final int? machineId;
  final String? contactPerson;
  final String? contactNumber;
  final String? alternativeNumber;
  final String? emailAddress;
  final String? servicesProvides;
  final String? companyName;
  const MaintenenceContact(
      {this.contactId,
      this.machineId,
      this.contactPerson,
      this.contactNumber,
      this.alternativeNumber,
      this.emailAddress,
      this.servicesProvides,
      this.companyName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || contactId != null) {
      map['contactid'] = Variable<int>(contactId);
    }
    if (!nullToAbsent || machineId != null) {
      map['machineid'] = Variable<int>(machineId);
    }
    if (!nullToAbsent || contactPerson != null) {
      map['contactperson'] = Variable<String>(contactPerson);
    }
    if (!nullToAbsent || contactNumber != null) {
      map['contactnumber'] = Variable<String>(contactNumber);
    }
    if (!nullToAbsent || alternativeNumber != null) {
      map['alternativenumber'] = Variable<String>(alternativeNumber);
    }
    if (!nullToAbsent || emailAddress != null) {
      map['emailadress'] = Variable<String>(emailAddress);
    }
    if (!nullToAbsent || servicesProvides != null) {
      map['servicesprovides'] = Variable<String>(servicesProvides);
    }
    if (!nullToAbsent || companyName != null) {
      map['companyname'] = Variable<String>(companyName);
    }
    return map;
  }

  MaintenenceContactsCompanion toCompanion(bool nullToAbsent) {
    return MaintenenceContactsCompanion(
      contactId: contactId == null && nullToAbsent
          ? const Value.absent()
          : Value(contactId),
      machineId: machineId == null && nullToAbsent
          ? const Value.absent()
          : Value(machineId),
      contactPerson: contactPerson == null && nullToAbsent
          ? const Value.absent()
          : Value(contactPerson),
      contactNumber: contactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(contactNumber),
      alternativeNumber: alternativeNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(alternativeNumber),
      emailAddress: emailAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(emailAddress),
      servicesProvides: servicesProvides == null && nullToAbsent
          ? const Value.absent()
          : Value(servicesProvides),
      companyName: companyName == null && nullToAbsent
          ? const Value.absent()
          : Value(companyName),
    );
  }

  factory MaintenenceContact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenenceContact(
      contactId: serializer.fromJson<int?>(json['contactId']),
      machineId: serializer.fromJson<int?>(json['machineId']),
      contactPerson: serializer.fromJson<String?>(json['contactPerson']),
      contactNumber: serializer.fromJson<String?>(json['contactNumber']),
      alternativeNumber:
          serializer.fromJson<String?>(json['alternativeNumber']),
      emailAddress: serializer.fromJson<String?>(json['emailAddress']),
      servicesProvides: serializer.fromJson<String?>(json['servicesProvides']),
      companyName: serializer.fromJson<String?>(json['companyName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'contactId': serializer.toJson<int?>(contactId),
      'machineId': serializer.toJson<int?>(machineId),
      'contactPerson': serializer.toJson<String?>(contactPerson),
      'contactNumber': serializer.toJson<String?>(contactNumber),
      'alternativeNumber': serializer.toJson<String?>(alternativeNumber),
      'emailAddress': serializer.toJson<String?>(emailAddress),
      'servicesProvides': serializer.toJson<String?>(servicesProvides),
      'companyName': serializer.toJson<String?>(companyName),
    };
  }

  MaintenenceContact copyWith(
          {int? contactId,
          int? machineId,
          String? contactPerson,
          String? contactNumber,
          String? alternativeNumber,
          String? emailAddress,
          String? servicesProvides,
          String? companyName}) =>
      MaintenenceContact(
        contactId: contactId ?? this.contactId,
        machineId: machineId ?? this.machineId,
        contactPerson: contactPerson ?? this.contactPerson,
        contactNumber: contactNumber ?? this.contactNumber,
        alternativeNumber: alternativeNumber ?? this.alternativeNumber,
        emailAddress: emailAddress ?? this.emailAddress,
        servicesProvides: servicesProvides ?? this.servicesProvides,
        companyName: companyName ?? this.companyName,
      );
  MaintenenceContact copyWithCompanion(MaintenenceContactsCompanion data) {
    return MaintenenceContact(
      contactId: data.contactId.present ? data.contactId.value : this.contactId,
      machineId: data.machineId.present ? data.machineId.value : this.machineId,
      contactPerson: data.contactPerson.present
          ? data.contactPerson.value
          : this.contactPerson,
      contactNumber: data.contactNumber.present
          ? data.contactNumber.value
          : this.contactNumber,
      alternativeNumber: data.alternativeNumber.present
          ? data.alternativeNumber.value
          : this.alternativeNumber,
      emailAddress: data.emailAddress.present
          ? data.emailAddress.value
          : this.emailAddress,
      servicesProvides: data.servicesProvides.present
          ? data.servicesProvides.value
          : this.servicesProvides,
      companyName:
          data.companyName.present ? data.companyName.value : this.companyName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceContact(')
          ..write('contactId: $contactId, ')
          ..write('machineId: $machineId, ')
          ..write('contactPerson: $contactPerson, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('alternativeNumber: $alternativeNumber, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('servicesProvides: $servicesProvides, ')
          ..write('companyName: $companyName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      contactId,
      machineId,
      contactPerson,
      contactNumber,
      alternativeNumber,
      emailAddress,
      servicesProvides,
      companyName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenenceContact &&
          other.contactId == this.contactId &&
          other.machineId == this.machineId &&
          other.contactPerson == this.contactPerson &&
          other.contactNumber == this.contactNumber &&
          other.alternativeNumber == this.alternativeNumber &&
          other.emailAddress == this.emailAddress &&
          other.servicesProvides == this.servicesProvides &&
          other.companyName == this.companyName);
}

class MaintenenceContactsCompanion extends UpdateCompanion<MaintenenceContact> {
  final Value<int?> contactId;
  final Value<int?> machineId;
  final Value<String?> contactPerson;
  final Value<String?> contactNumber;
  final Value<String?> alternativeNumber;
  final Value<String?> emailAddress;
  final Value<String?> servicesProvides;
  final Value<String?> companyName;
  const MaintenenceContactsCompanion({
    this.contactId = const Value.absent(),
    this.machineId = const Value.absent(),
    this.contactPerson = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.alternativeNumber = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.servicesProvides = const Value.absent(),
    this.companyName = const Value.absent(),
  });
  MaintenenceContactsCompanion.insert({
    this.contactId = const Value.absent(),
    this.machineId = const Value.absent(),
    this.contactPerson = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.alternativeNumber = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.servicesProvides = const Value.absent(),
    this.companyName = const Value.absent(),
  });
  static Insertable<MaintenenceContact> custom({
    Expression<int>? contactId,
    Expression<int>? machineId,
    Expression<String>? contactPerson,
    Expression<String>? contactNumber,
    Expression<String>? alternativeNumber,
    Expression<String>? emailAddress,
    Expression<String>? servicesProvides,
    Expression<String>? companyName,
  }) {
    return RawValuesInsertable({
      if (contactId != null) 'contactid': contactId,
      if (machineId != null) 'machineid': machineId,
      if (contactPerson != null) 'contactperson': contactPerson,
      if (contactNumber != null) 'contactnumber': contactNumber,
      if (alternativeNumber != null) 'alternativenumber': alternativeNumber,
      if (emailAddress != null) 'emailadress': emailAddress,
      if (servicesProvides != null) 'servicesprovides': servicesProvides,
      if (companyName != null) 'companyname': companyName,
    });
  }

  MaintenenceContactsCompanion copyWith(
      {Value<int?>? contactId,
      Value<int?>? machineId,
      Value<String?>? contactPerson,
      Value<String?>? contactNumber,
      Value<String?>? alternativeNumber,
      Value<String?>? emailAddress,
      Value<String?>? servicesProvides,
      Value<String?>? companyName}) {
    return MaintenenceContactsCompanion(
      contactId: contactId ?? this.contactId,
      machineId: machineId ?? this.machineId,
      contactPerson: contactPerson ?? this.contactPerson,
      contactNumber: contactNumber ?? this.contactNumber,
      alternativeNumber: alternativeNumber ?? this.alternativeNumber,
      emailAddress: emailAddress ?? this.emailAddress,
      servicesProvides: servicesProvides ?? this.servicesProvides,
      companyName: companyName ?? this.companyName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (contactId.present) {
      map['contactid'] = Variable<int>(contactId.value);
    }
    if (machineId.present) {
      map['machineid'] = Variable<int>(machineId.value);
    }
    if (contactPerson.present) {
      map['contactperson'] = Variable<String>(contactPerson.value);
    }
    if (contactNumber.present) {
      map['contactnumber'] = Variable<String>(contactNumber.value);
    }
    if (alternativeNumber.present) {
      map['alternativenumber'] = Variable<String>(alternativeNumber.value);
    }
    if (emailAddress.present) {
      map['emailadress'] = Variable<String>(emailAddress.value);
    }
    if (servicesProvides.present) {
      map['servicesprovides'] = Variable<String>(servicesProvides.value);
    }
    if (companyName.present) {
      map['companyname'] = Variable<String>(companyName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceContactsCompanion(')
          ..write('contactId: $contactId, ')
          ..write('machineId: $machineId, ')
          ..write('contactPerson: $contactPerson, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('alternativeNumber: $alternativeNumber, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('servicesProvides: $servicesProvides, ')
          ..write('companyName: $companyName')
          ..write(')'))
        .toString();
  }
}

class $MaintenenceItemsTable extends MaintenenceItems
    with TableInfo<$MaintenenceItemsTable, MaintenenceItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaintenenceItemsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> idColumn = GeneratedColumn<int>(
      'id_column', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> machine = GeneratedColumn<String>(
      'machine', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> serial = GeneratedColumn<String>(
      'serial', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [idColumn, machine, description, category, serial];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenenceitemsa';
  @override
  Set<GeneratedColumn> get $primaryKey => {idColumn};
  @override
  MaintenenceItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenenceItem(
      idColumn: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_column']),
      machine: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}machine']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      serial: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}serial']),
    );
  }

  @override
  $MaintenenceItemsTable createAlias(String alias) {
    return $MaintenenceItemsTable(attachedDatabase, alias);
  }
}

class MaintenenceItem extends DataClass implements Insertable<MaintenenceItem> {
  final int? idColumn;
  final String? machine;
  final String? description;
  final String? category;
  final String? serial;
  const MaintenenceItem(
      {this.idColumn,
      this.machine,
      this.description,
      this.category,
      this.serial});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idColumn != null) {
      map['id_column'] = Variable<int>(idColumn);
    }
    if (!nullToAbsent || machine != null) {
      map['machine'] = Variable<String>(machine);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || serial != null) {
      map['serial'] = Variable<String>(serial);
    }
    return map;
  }

  MaintenenceItemsCompanion toCompanion(bool nullToAbsent) {
    return MaintenenceItemsCompanion(
      idColumn: idColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(idColumn),
      machine: machine == null && nullToAbsent
          ? const Value.absent()
          : Value(machine),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      serial:
          serial == null && nullToAbsent ? const Value.absent() : Value(serial),
    );
  }

  factory MaintenenceItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenenceItem(
      idColumn: serializer.fromJson<int?>(json['idColumn']),
      machine: serializer.fromJson<String?>(json['machine']),
      description: serializer.fromJson<String?>(json['description']),
      category: serializer.fromJson<String?>(json['category']),
      serial: serializer.fromJson<String?>(json['serial']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idColumn': serializer.toJson<int?>(idColumn),
      'machine': serializer.toJson<String?>(machine),
      'description': serializer.toJson<String?>(description),
      'category': serializer.toJson<String?>(category),
      'serial': serializer.toJson<String?>(serial),
    };
  }

  MaintenenceItem copyWith(
          {int? idColumn,
          String? machine,
          String? description,
          String? category,
          String? serial}) =>
      MaintenenceItem(
        idColumn: idColumn ?? this.idColumn,
        machine: machine ?? this.machine,
        description: description ?? this.description,
        category: category ?? this.category,
        serial: serial ?? this.serial,
      );
  MaintenenceItem copyWithCompanion(MaintenenceItemsCompanion data) {
    return MaintenenceItem(
      idColumn: data.idColumn.present ? data.idColumn.value : this.idColumn,
      machine: data.machine.present ? data.machine.value : this.machine,
      description:
          data.description.present ? data.description.value : this.description,
      category: data.category.present ? data.category.value : this.category,
      serial: data.serial.present ? data.serial.value : this.serial,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceItem(')
          ..write('idColumn: $idColumn, ')
          ..write('machine: $machine, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('serial: $serial')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(idColumn, machine, description, category, serial);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenenceItem &&
          other.idColumn == this.idColumn &&
          other.machine == this.machine &&
          other.description == this.description &&
          other.category == this.category &&
          other.serial == this.serial);
}

class MaintenenceItemsCompanion extends UpdateCompanion<MaintenenceItem> {
  final Value<int?> idColumn;
  final Value<String?> machine;
  final Value<String?> description;
  final Value<String?> category;
  final Value<String?> serial;
  const MaintenenceItemsCompanion({
    this.idColumn = const Value.absent(),
    this.machine = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.serial = const Value.absent(),
  });
  MaintenenceItemsCompanion.insert({
    this.idColumn = const Value.absent(),
    this.machine = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.serial = const Value.absent(),
  });
  static Insertable<MaintenenceItem> custom({
    Expression<int>? idColumn,
    Expression<String>? machine,
    Expression<String>? description,
    Expression<String>? category,
    Expression<String>? serial,
  }) {
    return RawValuesInsertable({
      if (idColumn != null) 'id_column': idColumn,
      if (machine != null) 'machine': machine,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (serial != null) 'serial': serial,
    });
  }

  MaintenenceItemsCompanion copyWith(
      {Value<int?>? idColumn,
      Value<String?>? machine,
      Value<String?>? description,
      Value<String?>? category,
      Value<String?>? serial}) {
    return MaintenenceItemsCompanion(
      idColumn: idColumn ?? this.idColumn,
      machine: machine ?? this.machine,
      description: description ?? this.description,
      category: category ?? this.category,
      serial: serial ?? this.serial,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idColumn.present) {
      map['id_column'] = Variable<int>(idColumn.value);
    }
    if (machine.present) {
      map['machine'] = Variable<String>(machine.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (serial.present) {
      map['serial'] = Variable<String>(serial.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceItemsCompanion(')
          ..write('idColumn: $idColumn, ')
          ..write('machine: $machine, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('serial: $serial')
          ..write(')'))
        .toString();
  }
}

class $MaintenenceSchedTasksTable extends MaintenenceSchedTasks
    with TableInfo<$MaintenenceSchedTasksTable, MaintenenceSchedTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaintenenceSchedTasksTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<int> machineId = GeneratedColumn<int>(
      'machineid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> task = GeneratedColumn<String>(
      'task', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<double> frequency = GeneratedColumn<double>(
      'frequency', aliasedName, true,
      type: numericType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<DateTime> dstartDate = GeneratedColumn<DateTime>(
      'startdate', aliasedName, true,
      type: dateType, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'createdby', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumn<String> frequencyUnit = GeneratedColumn<String>(
      'frequencyunit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, machineId, task, frequency, dstartDate, createdBy, frequencyUnit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenenceitemsa';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaintenenceSchedTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenenceSchedTask(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      machineId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}machineid']),
      task: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task']),
      frequency: attachedDatabase.typeMapping
          .read(numericType, data['${effectivePrefix}frequency']),
      dstartDate: attachedDatabase.typeMapping
          .read(dateType, data['${effectivePrefix}startdate']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}createdby']),
      frequencyUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}frequencyunit']),
    );
  }

  @override
  $MaintenenceSchedTasksTable createAlias(String alias) {
    return $MaintenenceSchedTasksTable(attachedDatabase, alias);
  }
}

class MaintenenceSchedTask extends DataClass
    implements Insertable<MaintenenceSchedTask> {
  final int? id;
  final int? machineId;
  final String? task;
  final double? frequency;
  final DateTime? dstartDate;
  final String? createdBy;
  final String? frequencyUnit;
  const MaintenenceSchedTask(
      {this.id,
      this.machineId,
      this.task,
      this.frequency,
      this.dstartDate,
      this.createdBy,
      this.frequencyUnit});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || machineId != null) {
      map['machineid'] = Variable<int>(machineId);
    }
    if (!nullToAbsent || task != null) {
      map['task'] = Variable<String>(task);
    }
    if (!nullToAbsent || frequency != null) {
      map['frequency'] = Variable<double>(frequency, numericType);
    }
    if (!nullToAbsent || dstartDate != null) {
      map['startdate'] = Variable<DateTime>(dstartDate, dateType);
    }
    if (!nullToAbsent || createdBy != null) {
      map['createdby'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || frequencyUnit != null) {
      map['frequencyunit'] = Variable<String>(frequencyUnit);
    }
    return map;
  }

  MaintenenceSchedTasksCompanion toCompanion(bool nullToAbsent) {
    return MaintenenceSchedTasksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      machineId: machineId == null && nullToAbsent
          ? const Value.absent()
          : Value(machineId),
      task: task == null && nullToAbsent ? const Value.absent() : Value(task),
      frequency: frequency == null && nullToAbsent
          ? const Value.absent()
          : Value(frequency),
      dstartDate: dstartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dstartDate),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      frequencyUnit: frequencyUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(frequencyUnit),
    );
  }

  factory MaintenenceSchedTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenenceSchedTask(
      id: serializer.fromJson<int?>(json['id']),
      machineId: serializer.fromJson<int?>(json['machineId']),
      task: serializer.fromJson<String?>(json['task']),
      frequency: serializer.fromJson<double?>(json['frequency']),
      dstartDate: serializer.fromJson<DateTime?>(json['dstartDate']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      frequencyUnit: serializer.fromJson<String?>(json['frequencyUnit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'machineId': serializer.toJson<int?>(machineId),
      'task': serializer.toJson<String?>(task),
      'frequency': serializer.toJson<double?>(frequency),
      'dstartDate': serializer.toJson<DateTime?>(dstartDate),
      'createdBy': serializer.toJson<String?>(createdBy),
      'frequencyUnit': serializer.toJson<String?>(frequencyUnit),
    };
  }

  MaintenenceSchedTask copyWith(
          {int? id,
          int? machineId,
          String? task,
          double? frequency,
          DateTime? dstartDate,
          String? createdBy,
          String? frequencyUnit}) =>
      MaintenenceSchedTask(
        id: id ?? this.id,
        machineId: machineId ?? this.machineId,
        task: task ?? this.task,
        frequency: frequency ?? this.frequency,
        dstartDate: dstartDate ?? this.dstartDate,
        createdBy: createdBy ?? this.createdBy,
        frequencyUnit: frequencyUnit ?? this.frequencyUnit,
      );
  MaintenenceSchedTask copyWithCompanion(MaintenenceSchedTasksCompanion data) {
    return MaintenenceSchedTask(
      id: data.id.present ? data.id.value : this.id,
      machineId: data.machineId.present ? data.machineId.value : this.machineId,
      task: data.task.present ? data.task.value : this.task,
      frequency: data.frequency.present ? data.frequency.value : this.frequency,
      dstartDate:
          data.dstartDate.present ? data.dstartDate.value : this.dstartDate,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      frequencyUnit: data.frequencyUnit.present
          ? data.frequencyUnit.value
          : this.frequencyUnit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceSchedTask(')
          ..write('id: $id, ')
          ..write('machineId: $machineId, ')
          ..write('task: $task, ')
          ..write('frequency: $frequency, ')
          ..write('dstartDate: $dstartDate, ')
          ..write('createdBy: $createdBy, ')
          ..write('frequencyUnit: $frequencyUnit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, machineId, task, frequency, dstartDate, createdBy, frequencyUnit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenenceSchedTask &&
          other.id == this.id &&
          other.machineId == this.machineId &&
          other.task == this.task &&
          other.frequency == this.frequency &&
          other.dstartDate == this.dstartDate &&
          other.createdBy == this.createdBy &&
          other.frequencyUnit == this.frequencyUnit);
}

class MaintenenceSchedTasksCompanion
    extends UpdateCompanion<MaintenenceSchedTask> {
  final Value<int?> id;
  final Value<int?> machineId;
  final Value<String?> task;
  final Value<double?> frequency;
  final Value<DateTime?> dstartDate;
  final Value<String?> createdBy;
  final Value<String?> frequencyUnit;
  const MaintenenceSchedTasksCompanion({
    this.id = const Value.absent(),
    this.machineId = const Value.absent(),
    this.task = const Value.absent(),
    this.frequency = const Value.absent(),
    this.dstartDate = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.frequencyUnit = const Value.absent(),
  });
  MaintenenceSchedTasksCompanion.insert({
    this.id = const Value.absent(),
    this.machineId = const Value.absent(),
    this.task = const Value.absent(),
    this.frequency = const Value.absent(),
    this.dstartDate = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.frequencyUnit = const Value.absent(),
  });
  static Insertable<MaintenenceSchedTask> custom({
    Expression<int>? id,
    Expression<int>? machineId,
    Expression<String>? task,
    Expression<double>? frequency,
    Expression<DateTime>? dstartDate,
    Expression<String>? createdBy,
    Expression<String>? frequencyUnit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (machineId != null) 'machineid': machineId,
      if (task != null) 'task': task,
      if (frequency != null) 'frequency': frequency,
      if (dstartDate != null) 'startdate': dstartDate,
      if (createdBy != null) 'createdby': createdBy,
      if (frequencyUnit != null) 'frequencyunit': frequencyUnit,
    });
  }

  MaintenenceSchedTasksCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? machineId,
      Value<String?>? task,
      Value<double?>? frequency,
      Value<DateTime?>? dstartDate,
      Value<String?>? createdBy,
      Value<String?>? frequencyUnit}) {
    return MaintenenceSchedTasksCompanion(
      id: id ?? this.id,
      machineId: machineId ?? this.machineId,
      task: task ?? this.task,
      frequency: frequency ?? this.frequency,
      dstartDate: dstartDate ?? this.dstartDate,
      createdBy: createdBy ?? this.createdBy,
      frequencyUnit: frequencyUnit ?? this.frequencyUnit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (machineId.present) {
      map['machineid'] = Variable<int>(machineId.value);
    }
    if (task.present) {
      map['task'] = Variable<String>(task.value);
    }
    if (frequency.present) {
      map['frequency'] = Variable<double>(frequency.value, numericType);
    }
    if (dstartDate.present) {
      map['startdate'] = Variable<DateTime>(dstartDate.value, dateType);
    }
    if (createdBy.present) {
      map['createdby'] = Variable<String>(createdBy.value);
    }
    if (frequencyUnit.present) {
      map['frequencyunit'] = Variable<String>(frequencyUnit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenenceSchedTasksCompanion(')
          ..write('id: $id, ')
          ..write('machineId: $machineId, ')
          ..write('task: $task, ')
          ..write('frequency: $frequency, ')
          ..write('dstartDate: $dstartDate, ')
          ..write('createdBy: $createdBy, ')
          ..write('frequencyUnit: $frequencyUnit')
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
  late final $MaintenenceContactsTable maintenenceContacts =
      $MaintenenceContactsTable(this);
  late final $MaintenenceItemsTable maintenenceItems =
      $MaintenenceItemsTable(this);
  late final $MaintenenceSchedTasksTable maintenenceSchedTasks =
      $MaintenenceSchedTasksTable(this);
  late final CertusInvisionDao certusInvisionDao =
      CertusInvisionDao(this as CertusInvisionDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        driftDatabaseTypes,
        maintenanceEvents,
        maintenenceContacts,
        maintenenceItems,
        maintenenceSchedTasks
      ];
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
  Value<int?> eventId,
  Value<int?> machineId,
  Value<String?> type,
  Value<String?> faultDescription,
  Value<PgDateTime?> date,
  Value<String?> loggedBy,
  Value<String?> reportedBy,
  Value<String?> fixApplied,
  Value<String?> referenceNumber,
  Value<double?> cost,
  Value<String?> inHouse,
  Value<String?> contactUsed,
  Value<String?> timeFrom,
  Value<String?> timeTo,
  Value<String?> planned,
  Value<String?> status,
  Value<String?> technician,
  Value<PgDateTime?> dateFrom,
  Value<PgDateTime?> dateTo,
  Value<PgDateTime?> logDate,
  Value<int?> schedEventId,
  Value<double?> downtime,
});
typedef $$MaintenanceEventsTableUpdateCompanionBuilder
    = MaintenanceEventsCompanion Function({
  Value<int?> eventId,
  Value<int?> machineId,
  Value<String?> type,
  Value<String?> faultDescription,
  Value<PgDateTime?> date,
  Value<String?> loggedBy,
  Value<String?> reportedBy,
  Value<String?> fixApplied,
  Value<String?> referenceNumber,
  Value<double?> cost,
  Value<String?> inHouse,
  Value<String?> contactUsed,
  Value<String?> timeFrom,
  Value<String?> timeTo,
  Value<String?> planned,
  Value<String?> status,
  Value<String?> technician,
  Value<PgDateTime?> dateFrom,
  Value<PgDateTime?> dateTo,
  Value<PgDateTime?> logDate,
  Value<int?> schedEventId,
  Value<double?> downtime,
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
  ColumnFilters<int> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get faultDescription => $composableBuilder(
      column: $table.faultDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get loggedBy => $composableBuilder(
      column: $table.loggedBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reportedBy => $composableBuilder(
      column: $table.reportedBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fixApplied => $composableBuilder(
      column: $table.fixApplied, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get referenceNumber => $composableBuilder(
      column: $table.referenceNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inHouse => $composableBuilder(
      column: $table.inHouse, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactUsed => $composableBuilder(
      column: $table.contactUsed, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get timeFrom => $composableBuilder(
      column: $table.timeFrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get timeTo => $composableBuilder(
      column: $table.timeTo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get planned => $composableBuilder(
      column: $table.planned, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get dateFrom => $composableBuilder(
      column: $table.dateFrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get dateTo => $composableBuilder(
      column: $table.dateTo, builder: (column) => ColumnFilters(column));

  ColumnFilters<PgDateTime> get logDate => $composableBuilder(
      column: $table.logDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get schedEventId => $composableBuilder(
      column: $table.schedEventId, builder: (column) => ColumnFilters(column));

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
  ColumnOrderings<int> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get faultDescription => $composableBuilder(
      column: $table.faultDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get loggedBy => $composableBuilder(
      column: $table.loggedBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reportedBy => $composableBuilder(
      column: $table.reportedBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fixApplied => $composableBuilder(
      column: $table.fixApplied, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get referenceNumber => $composableBuilder(
      column: $table.referenceNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inHouse => $composableBuilder(
      column: $table.inHouse, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactUsed => $composableBuilder(
      column: $table.contactUsed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get timeFrom => $composableBuilder(
      column: $table.timeFrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get timeTo => $composableBuilder(
      column: $table.timeTo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get planned => $composableBuilder(
      column: $table.planned, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get dateFrom => $composableBuilder(
      column: $table.dateFrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get dateTo => $composableBuilder(
      column: $table.dateTo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<PgDateTime> get logDate => $composableBuilder(
      column: $table.logDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get schedEventId => $composableBuilder(
      column: $table.schedEventId,
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
  GeneratedColumn<int> get eventId =>
      $composableBuilder(column: $table.eventId, builder: (column) => column);

  GeneratedColumn<int> get machineId =>
      $composableBuilder(column: $table.machineId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get faultDescription => $composableBuilder(
      column: $table.faultDescription, builder: (column) => column);

  GeneratedColumn<PgDateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get loggedBy =>
      $composableBuilder(column: $table.loggedBy, builder: (column) => column);

  GeneratedColumn<String> get reportedBy => $composableBuilder(
      column: $table.reportedBy, builder: (column) => column);

  GeneratedColumn<String> get fixApplied => $composableBuilder(
      column: $table.fixApplied, builder: (column) => column);

  GeneratedColumn<String> get referenceNumber => $composableBuilder(
      column: $table.referenceNumber, builder: (column) => column);

  GeneratedColumn<double> get cost =>
      $composableBuilder(column: $table.cost, builder: (column) => column);

  GeneratedColumn<String> get inHouse =>
      $composableBuilder(column: $table.inHouse, builder: (column) => column);

  GeneratedColumn<String> get contactUsed => $composableBuilder(
      column: $table.contactUsed, builder: (column) => column);

  GeneratedColumn<String> get timeFrom =>
      $composableBuilder(column: $table.timeFrom, builder: (column) => column);

  GeneratedColumn<String> get timeTo =>
      $composableBuilder(column: $table.timeTo, builder: (column) => column);

  GeneratedColumn<String> get planned =>
      $composableBuilder(column: $table.planned, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get technician => $composableBuilder(
      column: $table.technician, builder: (column) => column);

  GeneratedColumn<PgDateTime> get dateFrom =>
      $composableBuilder(column: $table.dateFrom, builder: (column) => column);

  GeneratedColumn<PgDateTime> get dateTo =>
      $composableBuilder(column: $table.dateTo, builder: (column) => column);

  GeneratedColumn<PgDateTime> get logDate =>
      $composableBuilder(column: $table.logDate, builder: (column) => column);

  GeneratedColumn<int> get schedEventId => $composableBuilder(
      column: $table.schedEventId, builder: (column) => column);

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
            Value<int?> eventId = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> faultDescription = const Value.absent(),
            Value<PgDateTime?> date = const Value.absent(),
            Value<String?> loggedBy = const Value.absent(),
            Value<String?> reportedBy = const Value.absent(),
            Value<String?> fixApplied = const Value.absent(),
            Value<String?> referenceNumber = const Value.absent(),
            Value<double?> cost = const Value.absent(),
            Value<String?> inHouse = const Value.absent(),
            Value<String?> contactUsed = const Value.absent(),
            Value<String?> timeFrom = const Value.absent(),
            Value<String?> timeTo = const Value.absent(),
            Value<String?> planned = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<String?> technician = const Value.absent(),
            Value<PgDateTime?> dateFrom = const Value.absent(),
            Value<PgDateTime?> dateTo = const Value.absent(),
            Value<PgDateTime?> logDate = const Value.absent(),
            Value<int?> schedEventId = const Value.absent(),
            Value<double?> downtime = const Value.absent(),
          }) =>
              MaintenanceEventsCompanion(
            eventId: eventId,
            machineId: machineId,
            type: type,
            faultDescription: faultDescription,
            date: date,
            loggedBy: loggedBy,
            reportedBy: reportedBy,
            fixApplied: fixApplied,
            referenceNumber: referenceNumber,
            cost: cost,
            inHouse: inHouse,
            contactUsed: contactUsed,
            timeFrom: timeFrom,
            timeTo: timeTo,
            planned: planned,
            status: status,
            technician: technician,
            dateFrom: dateFrom,
            dateTo: dateTo,
            logDate: logDate,
            schedEventId: schedEventId,
            downtime: downtime,
          ),
          createCompanionCallback: ({
            Value<int?> eventId = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> faultDescription = const Value.absent(),
            Value<PgDateTime?> date = const Value.absent(),
            Value<String?> loggedBy = const Value.absent(),
            Value<String?> reportedBy = const Value.absent(),
            Value<String?> fixApplied = const Value.absent(),
            Value<String?> referenceNumber = const Value.absent(),
            Value<double?> cost = const Value.absent(),
            Value<String?> inHouse = const Value.absent(),
            Value<String?> contactUsed = const Value.absent(),
            Value<String?> timeFrom = const Value.absent(),
            Value<String?> timeTo = const Value.absent(),
            Value<String?> planned = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<String?> technician = const Value.absent(),
            Value<PgDateTime?> dateFrom = const Value.absent(),
            Value<PgDateTime?> dateTo = const Value.absent(),
            Value<PgDateTime?> logDate = const Value.absent(),
            Value<int?> schedEventId = const Value.absent(),
            Value<double?> downtime = const Value.absent(),
          }) =>
              MaintenanceEventsCompanion.insert(
            eventId: eventId,
            machineId: machineId,
            type: type,
            faultDescription: faultDescription,
            date: date,
            loggedBy: loggedBy,
            reportedBy: reportedBy,
            fixApplied: fixApplied,
            referenceNumber: referenceNumber,
            cost: cost,
            inHouse: inHouse,
            contactUsed: contactUsed,
            timeFrom: timeFrom,
            timeTo: timeTo,
            planned: planned,
            status: status,
            technician: technician,
            dateFrom: dateFrom,
            dateTo: dateTo,
            logDate: logDate,
            schedEventId: schedEventId,
            downtime: downtime,
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
typedef $$MaintenenceContactsTableCreateCompanionBuilder
    = MaintenenceContactsCompanion Function({
  Value<int?> contactId,
  Value<int?> machineId,
  Value<String?> contactPerson,
  Value<String?> contactNumber,
  Value<String?> alternativeNumber,
  Value<String?> emailAddress,
  Value<String?> servicesProvides,
  Value<String?> companyName,
});
typedef $$MaintenenceContactsTableUpdateCompanionBuilder
    = MaintenenceContactsCompanion Function({
  Value<int?> contactId,
  Value<int?> machineId,
  Value<String?> contactPerson,
  Value<String?> contactNumber,
  Value<String?> alternativeNumber,
  Value<String?> emailAddress,
  Value<String?> servicesProvides,
  Value<String?> companyName,
});

class $$MaintenenceContactsTableFilterComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceContactsTable> {
  $$MaintenenceContactsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get contactId => $composableBuilder(
      column: $table.contactId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alternativeNumber => $composableBuilder(
      column: $table.alternativeNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get emailAddress => $composableBuilder(
      column: $table.emailAddress, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get servicesProvides => $composableBuilder(
      column: $table.servicesProvides,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => ColumnFilters(column));
}

class $$MaintenenceContactsTableOrderingComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceContactsTable> {
  $$MaintenenceContactsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get contactId => $composableBuilder(
      column: $table.contactId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alternativeNumber => $composableBuilder(
      column: $table.alternativeNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get emailAddress => $composableBuilder(
      column: $table.emailAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get servicesProvides => $composableBuilder(
      column: $table.servicesProvides,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => ColumnOrderings(column));
}

class $$MaintenenceContactsTableAnnotationComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceContactsTable> {
  $$MaintenenceContactsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get contactId =>
      $composableBuilder(column: $table.contactId, builder: (column) => column);

  GeneratedColumn<int> get machineId =>
      $composableBuilder(column: $table.machineId, builder: (column) => column);

  GeneratedColumn<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson, builder: (column) => column);

  GeneratedColumn<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => column);

  GeneratedColumn<String> get alternativeNumber => $composableBuilder(
      column: $table.alternativeNumber, builder: (column) => column);

  GeneratedColumn<String> get emailAddress => $composableBuilder(
      column: $table.emailAddress, builder: (column) => column);

  GeneratedColumn<String> get servicesProvides => $composableBuilder(
      column: $table.servicesProvides, builder: (column) => column);

  GeneratedColumn<String> get companyName => $composableBuilder(
      column: $table.companyName, builder: (column) => column);
}

class $$MaintenenceContactsTableTableManager extends RootTableManager<
    _$CertusInvisionDatabase,
    $MaintenenceContactsTable,
    MaintenenceContact,
    $$MaintenenceContactsTableFilterComposer,
    $$MaintenenceContactsTableOrderingComposer,
    $$MaintenenceContactsTableAnnotationComposer,
    $$MaintenenceContactsTableCreateCompanionBuilder,
    $$MaintenenceContactsTableUpdateCompanionBuilder,
    (
      MaintenenceContact,
      BaseReferences<_$CertusInvisionDatabase, $MaintenenceContactsTable,
          MaintenenceContact>
    ),
    MaintenenceContact,
    PrefetchHooks Function()> {
  $$MaintenenceContactsTableTableManager(
      _$CertusInvisionDatabase db, $MaintenenceContactsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaintenenceContactsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaintenenceContactsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaintenenceContactsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> contactId = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> contactPerson = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<String?> alternativeNumber = const Value.absent(),
            Value<String?> emailAddress = const Value.absent(),
            Value<String?> servicesProvides = const Value.absent(),
            Value<String?> companyName = const Value.absent(),
          }) =>
              MaintenenceContactsCompanion(
            contactId: contactId,
            machineId: machineId,
            contactPerson: contactPerson,
            contactNumber: contactNumber,
            alternativeNumber: alternativeNumber,
            emailAddress: emailAddress,
            servicesProvides: servicesProvides,
            companyName: companyName,
          ),
          createCompanionCallback: ({
            Value<int?> contactId = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> contactPerson = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<String?> alternativeNumber = const Value.absent(),
            Value<String?> emailAddress = const Value.absent(),
            Value<String?> servicesProvides = const Value.absent(),
            Value<String?> companyName = const Value.absent(),
          }) =>
              MaintenenceContactsCompanion.insert(
            contactId: contactId,
            machineId: machineId,
            contactPerson: contactPerson,
            contactNumber: contactNumber,
            alternativeNumber: alternativeNumber,
            emailAddress: emailAddress,
            servicesProvides: servicesProvides,
            companyName: companyName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaintenenceContactsTableProcessedTableManager = ProcessedTableManager<
    _$CertusInvisionDatabase,
    $MaintenenceContactsTable,
    MaintenenceContact,
    $$MaintenenceContactsTableFilterComposer,
    $$MaintenenceContactsTableOrderingComposer,
    $$MaintenenceContactsTableAnnotationComposer,
    $$MaintenenceContactsTableCreateCompanionBuilder,
    $$MaintenenceContactsTableUpdateCompanionBuilder,
    (
      MaintenenceContact,
      BaseReferences<_$CertusInvisionDatabase, $MaintenenceContactsTable,
          MaintenenceContact>
    ),
    MaintenenceContact,
    PrefetchHooks Function()>;
typedef $$MaintenenceItemsTableCreateCompanionBuilder
    = MaintenenceItemsCompanion Function({
  Value<int?> idColumn,
  Value<String?> machine,
  Value<String?> description,
  Value<String?> category,
  Value<String?> serial,
});
typedef $$MaintenenceItemsTableUpdateCompanionBuilder
    = MaintenenceItemsCompanion Function({
  Value<int?> idColumn,
  Value<String?> machine,
  Value<String?> description,
  Value<String?> category,
  Value<String?> serial,
});

class $$MaintenenceItemsTableFilterComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceItemsTable> {
  $$MaintenenceItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idColumn => $composableBuilder(
      column: $table.idColumn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get machine => $composableBuilder(
      column: $table.machine, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get serial => $composableBuilder(
      column: $table.serial, builder: (column) => ColumnFilters(column));
}

class $$MaintenenceItemsTableOrderingComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceItemsTable> {
  $$MaintenenceItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idColumn => $composableBuilder(
      column: $table.idColumn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get machine => $composableBuilder(
      column: $table.machine, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get serial => $composableBuilder(
      column: $table.serial, builder: (column) => ColumnOrderings(column));
}

class $$MaintenenceItemsTableAnnotationComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceItemsTable> {
  $$MaintenenceItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idColumn =>
      $composableBuilder(column: $table.idColumn, builder: (column) => column);

  GeneratedColumn<String> get machine =>
      $composableBuilder(column: $table.machine, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get serial =>
      $composableBuilder(column: $table.serial, builder: (column) => column);
}

class $$MaintenenceItemsTableTableManager extends RootTableManager<
    _$CertusInvisionDatabase,
    $MaintenenceItemsTable,
    MaintenenceItem,
    $$MaintenenceItemsTableFilterComposer,
    $$MaintenenceItemsTableOrderingComposer,
    $$MaintenenceItemsTableAnnotationComposer,
    $$MaintenenceItemsTableCreateCompanionBuilder,
    $$MaintenenceItemsTableUpdateCompanionBuilder,
    (
      MaintenenceItem,
      BaseReferences<_$CertusInvisionDatabase, $MaintenenceItemsTable,
          MaintenenceItem>
    ),
    MaintenenceItem,
    PrefetchHooks Function()> {
  $$MaintenenceItemsTableTableManager(
      _$CertusInvisionDatabase db, $MaintenenceItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaintenenceItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaintenenceItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaintenenceItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> idColumn = const Value.absent(),
            Value<String?> machine = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> serial = const Value.absent(),
          }) =>
              MaintenenceItemsCompanion(
            idColumn: idColumn,
            machine: machine,
            description: description,
            category: category,
            serial: serial,
          ),
          createCompanionCallback: ({
            Value<int?> idColumn = const Value.absent(),
            Value<String?> machine = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> serial = const Value.absent(),
          }) =>
              MaintenenceItemsCompanion.insert(
            idColumn: idColumn,
            machine: machine,
            description: description,
            category: category,
            serial: serial,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaintenenceItemsTableProcessedTableManager = ProcessedTableManager<
    _$CertusInvisionDatabase,
    $MaintenenceItemsTable,
    MaintenenceItem,
    $$MaintenenceItemsTableFilterComposer,
    $$MaintenenceItemsTableOrderingComposer,
    $$MaintenenceItemsTableAnnotationComposer,
    $$MaintenenceItemsTableCreateCompanionBuilder,
    $$MaintenenceItemsTableUpdateCompanionBuilder,
    (
      MaintenenceItem,
      BaseReferences<_$CertusInvisionDatabase, $MaintenenceItemsTable,
          MaintenenceItem>
    ),
    MaintenenceItem,
    PrefetchHooks Function()>;
typedef $$MaintenenceSchedTasksTableCreateCompanionBuilder
    = MaintenenceSchedTasksCompanion Function({
  Value<int?> id,
  Value<int?> machineId,
  Value<String?> task,
  Value<double?> frequency,
  Value<DateTime?> dstartDate,
  Value<String?> createdBy,
  Value<String?> frequencyUnit,
});
typedef $$MaintenenceSchedTasksTableUpdateCompanionBuilder
    = MaintenenceSchedTasksCompanion Function({
  Value<int?> id,
  Value<int?> machineId,
  Value<String?> task,
  Value<double?> frequency,
  Value<DateTime?> dstartDate,
  Value<String?> createdBy,
  Value<String?> frequencyUnit,
});

class $$MaintenenceSchedTasksTableFilterComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceSchedTasksTable> {
  $$MaintenenceSchedTasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get task => $composableBuilder(
      column: $table.task, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get frequency => $composableBuilder(
      column: $table.frequency, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dstartDate => $composableBuilder(
      column: $table.dstartDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frequencyUnit => $composableBuilder(
      column: $table.frequencyUnit, builder: (column) => ColumnFilters(column));
}

class $$MaintenenceSchedTasksTableOrderingComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceSchedTasksTable> {
  $$MaintenenceSchedTasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get machineId => $composableBuilder(
      column: $table.machineId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get task => $composableBuilder(
      column: $table.task, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get frequency => $composableBuilder(
      column: $table.frequency, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dstartDate => $composableBuilder(
      column: $table.dstartDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frequencyUnit => $composableBuilder(
      column: $table.frequencyUnit,
      builder: (column) => ColumnOrderings(column));
}

class $$MaintenenceSchedTasksTableAnnotationComposer
    extends Composer<_$CertusInvisionDatabase, $MaintenenceSchedTasksTable> {
  $$MaintenenceSchedTasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get machineId =>
      $composableBuilder(column: $table.machineId, builder: (column) => column);

  GeneratedColumn<String> get task =>
      $composableBuilder(column: $table.task, builder: (column) => column);

  GeneratedColumn<double> get frequency =>
      $composableBuilder(column: $table.frequency, builder: (column) => column);

  GeneratedColumn<DateTime> get dstartDate => $composableBuilder(
      column: $table.dstartDate, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<String> get frequencyUnit => $composableBuilder(
      column: $table.frequencyUnit, builder: (column) => column);
}

class $$MaintenenceSchedTasksTableTableManager extends RootTableManager<
    _$CertusInvisionDatabase,
    $MaintenenceSchedTasksTable,
    MaintenenceSchedTask,
    $$MaintenenceSchedTasksTableFilterComposer,
    $$MaintenenceSchedTasksTableOrderingComposer,
    $$MaintenenceSchedTasksTableAnnotationComposer,
    $$MaintenenceSchedTasksTableCreateCompanionBuilder,
    $$MaintenenceSchedTasksTableUpdateCompanionBuilder,
    (
      MaintenenceSchedTask,
      BaseReferences<_$CertusInvisionDatabase, $MaintenenceSchedTasksTable,
          MaintenenceSchedTask>
    ),
    MaintenenceSchedTask,
    PrefetchHooks Function()> {
  $$MaintenenceSchedTasksTableTableManager(
      _$CertusInvisionDatabase db, $MaintenenceSchedTasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaintenenceSchedTasksTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$MaintenenceSchedTasksTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaintenenceSchedTasksTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> task = const Value.absent(),
            Value<double?> frequency = const Value.absent(),
            Value<DateTime?> dstartDate = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<String?> frequencyUnit = const Value.absent(),
          }) =>
              MaintenenceSchedTasksCompanion(
            id: id,
            machineId: machineId,
            task: task,
            frequency: frequency,
            dstartDate: dstartDate,
            createdBy: createdBy,
            frequencyUnit: frequencyUnit,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<int?> machineId = const Value.absent(),
            Value<String?> task = const Value.absent(),
            Value<double?> frequency = const Value.absent(),
            Value<DateTime?> dstartDate = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<String?> frequencyUnit = const Value.absent(),
          }) =>
              MaintenenceSchedTasksCompanion.insert(
            id: id,
            machineId: machineId,
            task: task,
            frequency: frequency,
            dstartDate: dstartDate,
            createdBy: createdBy,
            frequencyUnit: frequencyUnit,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MaintenenceSchedTasksTableProcessedTableManager
    = ProcessedTableManager<
        _$CertusInvisionDatabase,
        $MaintenenceSchedTasksTable,
        MaintenenceSchedTask,
        $$MaintenenceSchedTasksTableFilterComposer,
        $$MaintenenceSchedTasksTableOrderingComposer,
        $$MaintenenceSchedTasksTableAnnotationComposer,
        $$MaintenenceSchedTasksTableCreateCompanionBuilder,
        $$MaintenenceSchedTasksTableUpdateCompanionBuilder,
        (
          MaintenenceSchedTask,
          BaseReferences<_$CertusInvisionDatabase, $MaintenenceSchedTasksTable,
              MaintenenceSchedTask>
        ),
        MaintenenceSchedTask,
        PrefetchHooks Function()>;

class $CertusInvisionDatabaseManager {
  final _$CertusInvisionDatabase _db;
  $CertusInvisionDatabaseManager(this._db);
  $$DriftDatabaseTypesTableTableManager get driftDatabaseTypes =>
      $$DriftDatabaseTypesTableTableManager(_db, _db.driftDatabaseTypes);
  $$MaintenanceEventsTableTableManager get maintenanceEvents =>
      $$MaintenanceEventsTableTableManager(_db, _db.maintenanceEvents);
  $$MaintenenceContactsTableTableManager get maintenenceContacts =>
      $$MaintenenceContactsTableTableManager(_db, _db.maintenenceContacts);
  $$MaintenenceItemsTableTableManager get maintenenceItems =>
      $$MaintenenceItemsTableTableManager(_db, _db.maintenenceItems);
  $$MaintenenceSchedTasksTableTableManager get maintenenceSchedTasks =>
      $$MaintenenceSchedTasksTableTableManager(_db, _db.maintenenceSchedTasks);
}
