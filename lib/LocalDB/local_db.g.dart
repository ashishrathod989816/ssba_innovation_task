// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CityinfoModel extends DataClass implements Insertable<CityinfoModel> {
  final int? id;
  final String? city;
  final String? state;
  final String? country;
  final String? date;
  CityinfoModel({this.id, this.city, this.state, this.country, this.date});
  factory CityinfoModel.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CityinfoModel(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}state']),
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country']),
      date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String?>(state);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String?>(country);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String?>(date);
    }
    return map;
  }

  CityinfoModelsCompanion toCompanion(bool nullToAbsent) {
    return CityinfoModelsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
    );
  }

  factory CityinfoModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CityinfoModel(
      id: serializer.fromJson<int?>(json['id']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      country: serializer.fromJson<String?>(json['country']),
      date: serializer.fromJson<String?>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'country': serializer.toJson<String?>(country),
      'date': serializer.toJson<String?>(date),
    };
  }

  CityinfoModel copyWith(
          {int? id,
          String? city,
          String? state,
          String? country,
          String? date}) =>
      CityinfoModel(
        id: id ?? this.id,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('CityinfoModel(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(city.hashCode,
          $mrjc(state.hashCode, $mrjc(country.hashCode, date.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CityinfoModel &&
          other.id == this.id &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.date == this.date);
}

class CityinfoModelsCompanion extends UpdateCompanion<CityinfoModel> {
  final Value<int?> id;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> country;
  final Value<String?> date;
  const CityinfoModelsCompanion({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.date = const Value.absent(),
  });
  CityinfoModelsCompanion.insert({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.date = const Value.absent(),
  });
  static Insertable<CityinfoModel> custom({
    Expression<int?>? id,
    Expression<String?>? city,
    Expression<String?>? state,
    Expression<String?>? country,
    Expression<String?>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (date != null) 'date': date,
    });
  }

  CityinfoModelsCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? country,
      Value<String?>? date}) {
    return CityinfoModelsCompanion(
      id: id ?? this.id,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String?>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String?>(country.value);
    }
    if (date.present) {
      map['date'] = Variable<String?>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CityinfoModelsCompanion(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $CityinfoModelsTable extends CityinfoModels
    with TableInfo<$CityinfoModelsTable, CityinfoModel> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CityinfoModelsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'state', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  late final GeneratedColumn<String?> date = GeneratedColumn<String?>(
      'date', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, city, state, country, date];
  @override
  String get aliasedName => _alias ?? 'cityinfo_models';
  @override
  String get actualTableName => 'cityinfo_models';
  @override
  VerificationContext validateIntegrity(Insertable<CityinfoModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CityinfoModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CityinfoModel.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CityinfoModelsTable createAlias(String alias) {
    return $CityinfoModelsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CityinfoModelsTable cityinfoModels = $CityinfoModelsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cityinfoModels];
}
