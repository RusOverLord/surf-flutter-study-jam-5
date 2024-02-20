// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Image {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) local,
    required TResult Function(Uri url) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? local,
    TResult? Function(Uri url)? remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? local,
    TResult Function(Uri url)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageLocal value) local,
    required TResult Function(ImageRemote value) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageLocal value)? local,
    TResult? Function(ImageRemote value)? remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageLocal value)? local,
    TResult Function(ImageRemote value)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageLocalImplCopyWith<$Res> {
  factory _$$ImageLocalImplCopyWith(
          _$ImageLocalImpl value, $Res Function(_$ImageLocalImpl) then) =
      __$$ImageLocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$ImageLocalImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageLocalImpl>
    implements _$$ImageLocalImplCopyWith<$Res> {
  __$$ImageLocalImplCopyWithImpl(
      _$ImageLocalImpl _value, $Res Function(_$ImageLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$ImageLocalImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ImageLocalImpl implements ImageLocal {
  const _$ImageLocalImpl({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'Image.local(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLocalImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLocalImplCopyWith<_$ImageLocalImpl> get copyWith =>
      __$$ImageLocalImplCopyWithImpl<_$ImageLocalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) local,
    required TResult Function(Uri url) remote,
  }) {
    return local(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? local,
    TResult? Function(Uri url)? remote,
  }) {
    return local?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? local,
    TResult Function(Uri url)? remote,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageLocal value) local,
    required TResult Function(ImageRemote value) remote,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageLocal value)? local,
    TResult? Function(ImageRemote value)? remote,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageLocal value)? local,
    TResult Function(ImageRemote value)? remote,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class ImageLocal implements Image {
  const factory ImageLocal({required final File file}) = _$ImageLocalImpl;

  File get file;
  @JsonKey(ignore: true)
  _$$ImageLocalImplCopyWith<_$ImageLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageRemoteImplCopyWith<$Res> {
  factory _$$ImageRemoteImplCopyWith(
          _$ImageRemoteImpl value, $Res Function(_$ImageRemoteImpl) then) =
      __$$ImageRemoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri url});
}

/// @nodoc
class __$$ImageRemoteImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageRemoteImpl>
    implements _$$ImageRemoteImplCopyWith<$Res> {
  __$$ImageRemoteImplCopyWithImpl(
      _$ImageRemoteImpl _value, $Res Function(_$ImageRemoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ImageRemoteImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$ImageRemoteImpl implements ImageRemote {
  const _$ImageRemoteImpl({required this.url});

  @override
  final Uri url;

  @override
  String toString() {
    return 'Image.remote(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageRemoteImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageRemoteImplCopyWith<_$ImageRemoteImpl> get copyWith =>
      __$$ImageRemoteImplCopyWithImpl<_$ImageRemoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) local,
    required TResult Function(Uri url) remote,
  }) {
    return remote(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? local,
    TResult? Function(Uri url)? remote,
  }) {
    return remote?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? local,
    TResult Function(Uri url)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageLocal value) local,
    required TResult Function(ImageRemote value) remote,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageLocal value)? local,
    TResult? Function(ImageRemote value)? remote,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageLocal value)? local,
    TResult Function(ImageRemote value)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class ImageRemote implements Image {
  const factory ImageRemote({required final Uri url}) = _$ImageRemoteImpl;

  Uri get url;
  @JsonKey(ignore: true)
  _$$ImageRemoteImplCopyWith<_$ImageRemoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
