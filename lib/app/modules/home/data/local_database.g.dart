// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ContactTableData extends DataClass
    implements Insertable<ContactTableData> {
  final int id;
  final String name;
  final String email;
  final String photo;
  final String number;
  ContactTableData(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.photo,
      @required this.number});
  factory ContactTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ContactTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      photo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}photo']),
      number:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}number']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || photo != null) {
      map['photo'] = Variable<String>(photo);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    return map;
  }

  ContactTableCompanion toCompanion(bool nullToAbsent) {
    return ContactTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
    );
  }

  factory ContactTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ContactTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      photo: serializer.fromJson<String>(json['photo']),
      number: serializer.fromJson<String>(json['number']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'photo': serializer.toJson<String>(photo),
      'number': serializer.toJson<String>(number),
    };
  }

  ContactTableData copyWith(
          {int id, String name, String email, String photo, String number}) =>
      ContactTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        photo: photo ?? this.photo,
        number: number ?? this.number,
      );
  @override
  String toString() {
    return (StringBuffer('ContactTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('photo: $photo, ')
          ..write('number: $number')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(email.hashCode, $mrjc(photo.hashCode, number.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ContactTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.photo == this.photo &&
          other.number == this.number);
}

class ContactTableCompanion extends UpdateCompanion<ContactTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> photo;
  final Value<String> number;
  const ContactTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.photo = const Value.absent(),
    this.number = const Value.absent(),
  });
  ContactTableCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String email,
    @required String photo,
    @required String number,
  })  : name = Value(name),
        email = Value(email),
        photo = Value(photo),
        number = Value(number);
  static Insertable<ContactTableData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> email,
    Expression<String> photo,
    Expression<String> number,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (photo != null) 'photo': photo,
      if (number != null) 'number': number,
    });
  }

  ContactTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> email,
      Value<String> photo,
      Value<String> number}) {
    return ContactTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      number: number ?? this.number,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String>(photo.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('photo: $photo, ')
          ..write('number: $number')
          ..write(')'))
        .toString();
  }
}

class $ContactTableTable extends ContactTable
    with TableInfo<$ContactTableTable, ContactTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContactTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 0, maxTextLength: 49);
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _photoMeta = const VerificationMeta('photo');
  GeneratedTextColumn _photo;
  @override
  GeneratedTextColumn get photo => _photo ??= _constructPhoto();
  GeneratedTextColumn _constructPhoto() {
    return GeneratedTextColumn(
      'photo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberMeta = const VerificationMeta('number');
  GeneratedTextColumn _number;
  @override
  GeneratedTextColumn get number => _number ??= _constructNumber();
  GeneratedTextColumn _constructNumber() {
    return GeneratedTextColumn(
      'number',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, email, photo, number];
  @override
  $ContactTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contact_table';
  @override
  final String actualTableName = 'contact_table';
  @override
  VerificationContext validateIntegrity(Insertable<ContactTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo'], _photoMeta));
    } else if (isInserting) {
      context.missing(_photoMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number'], _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContactTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ContactTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContactTableTable createAlias(String alias) {
    return $ContactTableTable(_db, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ContactTableTable _contactTable;
  $ContactTableTable get contactTable =>
      _contactTable ??= $ContactTableTable(this);
  ContactDao _contactDao;
  ContactDao get contactDao =>
      _contactDao ??= ContactDao(this as LocalDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [contactTable];
}
