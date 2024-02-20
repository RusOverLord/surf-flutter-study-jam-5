// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Meme {
  int get id => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;
  Text get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res, Meme>;
  @useResult
  $Res call({int id, Image image, Text text});

  $ImageCopyWith<$Res> get image;
  $TextCopyWith<$Res> get text;
}

/// @nodoc
class _$MemeCopyWithImpl<$Res, $Val extends Meme>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Text,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextCopyWith<$Res> get text {
    return $TextCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemeImplCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$MemeImplCopyWith(
          _$MemeImpl value, $Res Function(_$MemeImpl) then) =
      __$$MemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Image image, Text text});

  @override
  $ImageCopyWith<$Res> get image;
  @override
  $TextCopyWith<$Res> get text;
}

/// @nodoc
class __$$MemeImplCopyWithImpl<$Res>
    extends _$MemeCopyWithImpl<$Res, _$MemeImpl>
    implements _$$MemeImplCopyWith<$Res> {
  __$$MemeImplCopyWithImpl(_$MemeImpl _value, $Res Function(_$MemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? text = null,
  }) {
    return _then(_$MemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Text,
    ));
  }
}

/// @nodoc

class _$MemeImpl implements _Meme {
  const _$MemeImpl({required this.id, required this.image, required this.text});

  @override
  final int id;
  @override
  final Image image;
  @override
  final Text text;

  @override
  String toString() {
    return 'Meme(id: $id, image: $image, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeImplCopyWith<_$MemeImpl> get copyWith =>
      __$$MemeImplCopyWithImpl<_$MemeImpl>(this, _$identity);
}

abstract class _Meme implements Meme {
  const factory _Meme(
      {required final int id,
      required final Image image,
      required final Text text}) = _$MemeImpl;

  @override
  int get id;
  @override
  Image get image;
  @override
  Text get text;
  @override
  @JsonKey(ignore: true)
  _$$MemeImplCopyWith<_$MemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
