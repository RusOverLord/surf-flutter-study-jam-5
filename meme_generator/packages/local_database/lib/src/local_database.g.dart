// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class Memes extends Table with TableInfo<Memes, Meme> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Memes(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY NOT NULL');
  static const VerificationMeta _imageTypeMeta =
      const VerificationMeta('imageType');
  late final GeneratedColumnWithTypeConverter<ImageType, String> imageType =
      GeneratedColumn<String>('image_type', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<ImageType>(Memes.$converterimageType);
  static const VerificationMeta _imageSourceMeta =
      const VerificationMeta('imageSource');
  late final GeneratedColumn<String> imageSource = GeneratedColumn<String>(
      'image_source', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _textValueMeta =
      const VerificationMeta('textValue');
  late final GeneratedColumn<String> textValue = GeneratedColumn<String>(
      'text_value', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _fontSizeMeta =
      const VerificationMeta('fontSize');
  late final GeneratedColumn<double> fontSize = GeneratedColumn<double>(
      'font_size', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, imageType, imageSource, textValue, fontSize];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'memes';
  @override
  VerificationContext validateIntegrity(Insertable<Meme> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_imageTypeMeta, const VerificationResult.success());
    if (data.containsKey('image_source')) {
      context.handle(
          _imageSourceMeta,
          imageSource.isAcceptableOrUnknown(
              data['image_source']!, _imageSourceMeta));
    } else if (isInserting) {
      context.missing(_imageSourceMeta);
    }
    if (data.containsKey('text_value')) {
      context.handle(_textValueMeta,
          textValue.isAcceptableOrUnknown(data['text_value']!, _textValueMeta));
    } else if (isInserting) {
      context.missing(_textValueMeta);
    }
    if (data.containsKey('font_size')) {
      context.handle(_fontSizeMeta,
          fontSize.isAcceptableOrUnknown(data['font_size']!, _fontSizeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Meme map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Meme(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      imageType: Memes.$converterimageType.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_type'])!),
      imageSource: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_source'])!,
      textValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_value'])!,
      fontSize: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}font_size']),
    );
  }

  @override
  Memes createAlias(String alias) {
    return Memes(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ImageType, String, String> $converterimageType =
      const EnumNameConverter<ImageType>(ImageType.values);
  @override
  bool get dontWriteConstraints => true;
}

class Meme extends DataClass implements Insertable<Meme> {
  final int id;
  final ImageType imageType;
  final String imageSource;
  final String textValue;
  final double? fontSize;
  const Meme(
      {required this.id,
      required this.imageType,
      required this.imageSource,
      required this.textValue,
      this.fontSize});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['image_type'] =
          Variable<String>(Memes.$converterimageType.toSql(imageType));
    }
    map['image_source'] = Variable<String>(imageSource);
    map['text_value'] = Variable<String>(textValue);
    if (!nullToAbsent || fontSize != null) {
      map['font_size'] = Variable<double>(fontSize);
    }
    return map;
  }

  MemesCompanion toCompanion(bool nullToAbsent) {
    return MemesCompanion(
      id: Value(id),
      imageType: Value(imageType),
      imageSource: Value(imageSource),
      textValue: Value(textValue),
      fontSize: fontSize == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSize),
    );
  }

  factory Meme.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Meme(
      id: serializer.fromJson<int>(json['id']),
      imageType: Memes.$converterimageType
          .fromJson(serializer.fromJson<String>(json['image_type'])),
      imageSource: serializer.fromJson<String>(json['image_source']),
      textValue: serializer.fromJson<String>(json['text_value']),
      fontSize: serializer.fromJson<double?>(json['font_size']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'image_type': serializer
          .toJson<String>(Memes.$converterimageType.toJson(imageType)),
      'image_source': serializer.toJson<String>(imageSource),
      'text_value': serializer.toJson<String>(textValue),
      'font_size': serializer.toJson<double?>(fontSize),
    };
  }

  Meme copyWith(
          {int? id,
          ImageType? imageType,
          String? imageSource,
          String? textValue,
          Value<double?> fontSize = const Value.absent()}) =>
      Meme(
        id: id ?? this.id,
        imageType: imageType ?? this.imageType,
        imageSource: imageSource ?? this.imageSource,
        textValue: textValue ?? this.textValue,
        fontSize: fontSize.present ? fontSize.value : this.fontSize,
      );
  @override
  String toString() {
    return (StringBuffer('Meme(')
          ..write('id: $id, ')
          ..write('imageType: $imageType, ')
          ..write('imageSource: $imageSource, ')
          ..write('textValue: $textValue, ')
          ..write('fontSize: $fontSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, imageType, imageSource, textValue, fontSize);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Meme &&
          other.id == this.id &&
          other.imageType == this.imageType &&
          other.imageSource == this.imageSource &&
          other.textValue == this.textValue &&
          other.fontSize == this.fontSize);
}

class MemesCompanion extends UpdateCompanion<Meme> {
  final Value<int> id;
  final Value<ImageType> imageType;
  final Value<String> imageSource;
  final Value<String> textValue;
  final Value<double?> fontSize;
  const MemesCompanion({
    this.id = const Value.absent(),
    this.imageType = const Value.absent(),
    this.imageSource = const Value.absent(),
    this.textValue = const Value.absent(),
    this.fontSize = const Value.absent(),
  });
  MemesCompanion.insert({
    this.id = const Value.absent(),
    required ImageType imageType,
    required String imageSource,
    required String textValue,
    this.fontSize = const Value.absent(),
  })  : imageType = Value(imageType),
        imageSource = Value(imageSource),
        textValue = Value(textValue);
  static Insertable<Meme> custom({
    Expression<int>? id,
    Expression<String>? imageType,
    Expression<String>? imageSource,
    Expression<String>? textValue,
    Expression<double>? fontSize,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imageType != null) 'image_type': imageType,
      if (imageSource != null) 'image_source': imageSource,
      if (textValue != null) 'text_value': textValue,
      if (fontSize != null) 'font_size': fontSize,
    });
  }

  MemesCompanion copyWith(
      {Value<int>? id,
      Value<ImageType>? imageType,
      Value<String>? imageSource,
      Value<String>? textValue,
      Value<double?>? fontSize}) {
    return MemesCompanion(
      id: id ?? this.id,
      imageType: imageType ?? this.imageType,
      imageSource: imageSource ?? this.imageSource,
      textValue: textValue ?? this.textValue,
      fontSize: fontSize ?? this.fontSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imageType.present) {
      map['image_type'] =
          Variable<String>(Memes.$converterimageType.toSql(imageType.value));
    }
    if (imageSource.present) {
      map['image_source'] = Variable<String>(imageSource.value);
    }
    if (textValue.present) {
      map['text_value'] = Variable<String>(textValue.value);
    }
    if (fontSize.present) {
      map['font_size'] = Variable<double>(fontSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MemesCompanion(')
          ..write('id: $id, ')
          ..write('imageType: $imageType, ')
          ..write('imageSource: $imageSource, ')
          ..write('textValue: $textValue, ')
          ..write('fontSize: $fontSize')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final Memes memes = Memes(this);
  Selectable<Meme> findMemeById(int id) {
    return customSelect('SELECT * FROM memes WHERE id = ?1', variables: [
      Variable<int>(id)
    ], readsFrom: {
      memes,
    }).asyncMap(memes.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [memes];
}
