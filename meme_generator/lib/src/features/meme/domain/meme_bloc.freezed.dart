// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemeBlocEvent {
  Meme get meme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme meme) insert,
    required TResult Function(Meme meme) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme meme)? insert,
    TResult? Function(Meme meme)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme meme)? insert,
    TResult Function(Meme meme)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocEventInsert value) insert,
    required TResult Function(MemeBlocEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocEventInsert value)? insert,
    TResult? Function(MemeBlocEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocEventInsert value)? insert,
    TResult Function(MemeBlocEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemeBlocEventCopyWith<MemeBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeBlocEventCopyWith<$Res> {
  factory $MemeBlocEventCopyWith(
          MemeBlocEvent value, $Res Function(MemeBlocEvent) then) =
      _$MemeBlocEventCopyWithImpl<$Res, MemeBlocEvent>;
  @useResult
  $Res call({Meme meme});

  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class _$MemeBlocEventCopyWithImpl<$Res, $Val extends MemeBlocEvent>
    implements $MemeBlocEventCopyWith<$Res> {
  _$MemeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_value.copyWith(
      meme: null == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemeCopyWith<$Res> get meme {
    return $MemeCopyWith<$Res>(_value.meme, (value) {
      return _then(_value.copyWith(meme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemeBlocEventInsertImplCopyWith<$Res>
    implements $MemeBlocEventCopyWith<$Res> {
  factory _$$MemeBlocEventInsertImplCopyWith(_$MemeBlocEventInsertImpl value,
          $Res Function(_$MemeBlocEventInsertImpl) then) =
      __$$MemeBlocEventInsertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meme meme});

  @override
  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class __$$MemeBlocEventInsertImplCopyWithImpl<$Res>
    extends _$MemeBlocEventCopyWithImpl<$Res, _$MemeBlocEventInsertImpl>
    implements _$$MemeBlocEventInsertImplCopyWith<$Res> {
  __$$MemeBlocEventInsertImplCopyWithImpl(_$MemeBlocEventInsertImpl _value,
      $Res Function(_$MemeBlocEventInsertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_$MemeBlocEventInsertImpl(
      meme: null == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme,
    ));
  }
}

/// @nodoc

class _$MemeBlocEventInsertImpl extends MemeBlocEventInsert {
  const _$MemeBlocEventInsertImpl({required this.meme}) : super._();

  @override
  final Meme meme;

  @override
  String toString() {
    return 'MemeBlocEvent.insert(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeBlocEventInsertImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeBlocEventInsertImplCopyWith<_$MemeBlocEventInsertImpl> get copyWith =>
      __$$MemeBlocEventInsertImplCopyWithImpl<_$MemeBlocEventInsertImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme meme) insert,
    required TResult Function(Meme meme) update,
  }) {
    return insert(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme meme)? insert,
    TResult? Function(Meme meme)? update,
  }) {
    return insert?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme meme)? insert,
    TResult Function(Meme meme)? update,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocEventInsert value) insert,
    required TResult Function(MemeBlocEventUpdate value) update,
  }) {
    return insert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocEventInsert value)? insert,
    TResult? Function(MemeBlocEventUpdate value)? update,
  }) {
    return insert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocEventInsert value)? insert,
    TResult Function(MemeBlocEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class MemeBlocEventInsert extends MemeBlocEvent {
  const factory MemeBlocEventInsert({required final Meme meme}) =
      _$MemeBlocEventInsertImpl;
  const MemeBlocEventInsert._() : super._();

  @override
  Meme get meme;
  @override
  @JsonKey(ignore: true)
  _$$MemeBlocEventInsertImplCopyWith<_$MemeBlocEventInsertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeBlocEventUpdateImplCopyWith<$Res>
    implements $MemeBlocEventCopyWith<$Res> {
  factory _$$MemeBlocEventUpdateImplCopyWith(_$MemeBlocEventUpdateImpl value,
          $Res Function(_$MemeBlocEventUpdateImpl) then) =
      __$$MemeBlocEventUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meme meme});

  @override
  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class __$$MemeBlocEventUpdateImplCopyWithImpl<$Res>
    extends _$MemeBlocEventCopyWithImpl<$Res, _$MemeBlocEventUpdateImpl>
    implements _$$MemeBlocEventUpdateImplCopyWith<$Res> {
  __$$MemeBlocEventUpdateImplCopyWithImpl(_$MemeBlocEventUpdateImpl _value,
      $Res Function(_$MemeBlocEventUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_$MemeBlocEventUpdateImpl(
      meme: null == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme,
    ));
  }
}

/// @nodoc

class _$MemeBlocEventUpdateImpl extends MemeBlocEventUpdate {
  const _$MemeBlocEventUpdateImpl({required this.meme}) : super._();

  @override
  final Meme meme;

  @override
  String toString() {
    return 'MemeBlocEvent.update(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeBlocEventUpdateImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeBlocEventUpdateImplCopyWith<_$MemeBlocEventUpdateImpl> get copyWith =>
      __$$MemeBlocEventUpdateImplCopyWithImpl<_$MemeBlocEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme meme) insert,
    required TResult Function(Meme meme) update,
  }) {
    return update(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme meme)? insert,
    TResult? Function(Meme meme)? update,
  }) {
    return update?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme meme)? insert,
    TResult Function(Meme meme)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocEventInsert value) insert,
    required TResult Function(MemeBlocEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocEventInsert value)? insert,
    TResult? Function(MemeBlocEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocEventInsert value)? insert,
    TResult Function(MemeBlocEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class MemeBlocEventUpdate extends MemeBlocEvent {
  const factory MemeBlocEventUpdate({required final Meme meme}) =
      _$MemeBlocEventUpdateImpl;
  const MemeBlocEventUpdate._() : super._();

  @override
  Meme get meme;
  @override
  @JsonKey(ignore: true)
  _$$MemeBlocEventUpdateImplCopyWith<_$MemeBlocEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemeBlocState {
  Meme? get meme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme? meme) loading,
    required TResult Function(Meme meme) idle,
    required TResult Function(Meme? meme, Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme? meme)? loading,
    TResult? Function(Meme meme)? idle,
    TResult? Function(Meme? meme, Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme? meme)? loading,
    TResult Function(Meme meme)? idle,
    TResult Function(Meme? meme, Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocStateLoading value) loading,
    required TResult Function(MemeBlocStateIdle value) idle,
    required TResult Function(MemeBlocStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocStateLoading value)? loading,
    TResult? Function(MemeBlocStateIdle value)? idle,
    TResult? Function(MemeBlocStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocStateLoading value)? loading,
    TResult Function(MemeBlocStateIdle value)? idle,
    TResult Function(MemeBlocStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemeBlocStateCopyWith<MemeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeBlocStateCopyWith<$Res> {
  factory $MemeBlocStateCopyWith(
          MemeBlocState value, $Res Function(MemeBlocState) then) =
      _$MemeBlocStateCopyWithImpl<$Res, MemeBlocState>;
  @useResult
  $Res call({Meme meme});

  $MemeCopyWith<$Res>? get meme;
}

/// @nodoc
class _$MemeBlocStateCopyWithImpl<$Res, $Val extends MemeBlocState>
    implements $MemeBlocStateCopyWith<$Res> {
  _$MemeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_value.copyWith(
      meme: null == meme
          ? _value.meme!
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemeCopyWith<$Res>? get meme {
    if (_value.meme == null) {
      return null;
    }

    return $MemeCopyWith<$Res>(_value.meme!, (value) {
      return _then(_value.copyWith(meme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemeBlocStateLoadingImplCopyWith<$Res>
    implements $MemeBlocStateCopyWith<$Res> {
  factory _$$MemeBlocStateLoadingImplCopyWith(_$MemeBlocStateLoadingImpl value,
          $Res Function(_$MemeBlocStateLoadingImpl) then) =
      __$$MemeBlocStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meme? meme});

  @override
  $MemeCopyWith<$Res>? get meme;
}

/// @nodoc
class __$$MemeBlocStateLoadingImplCopyWithImpl<$Res>
    extends _$MemeBlocStateCopyWithImpl<$Res, _$MemeBlocStateLoadingImpl>
    implements _$$MemeBlocStateLoadingImplCopyWith<$Res> {
  __$$MemeBlocStateLoadingImplCopyWithImpl(_$MemeBlocStateLoadingImpl _value,
      $Res Function(_$MemeBlocStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = freezed,
  }) {
    return _then(_$MemeBlocStateLoadingImpl(
      meme: freezed == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme?,
    ));
  }
}

/// @nodoc

class _$MemeBlocStateLoadingImpl extends MemeBlocStateLoading {
  const _$MemeBlocStateLoadingImpl({this.meme}) : super._();

  @override
  final Meme? meme;

  @override
  String toString() {
    return 'MemeBlocState.loading(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeBlocStateLoadingImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeBlocStateLoadingImplCopyWith<_$MemeBlocStateLoadingImpl>
      get copyWith =>
          __$$MemeBlocStateLoadingImplCopyWithImpl<_$MemeBlocStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme? meme) loading,
    required TResult Function(Meme meme) idle,
    required TResult Function(Meme? meme, Object error) error,
  }) {
    return loading(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme? meme)? loading,
    TResult? Function(Meme meme)? idle,
    TResult? Function(Meme? meme, Object error)? error,
  }) {
    return loading?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme? meme)? loading,
    TResult Function(Meme meme)? idle,
    TResult Function(Meme? meme, Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocStateLoading value) loading,
    required TResult Function(MemeBlocStateIdle value) idle,
    required TResult Function(MemeBlocStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocStateLoading value)? loading,
    TResult? Function(MemeBlocStateIdle value)? idle,
    TResult? Function(MemeBlocStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocStateLoading value)? loading,
    TResult Function(MemeBlocStateIdle value)? idle,
    TResult Function(MemeBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MemeBlocStateLoading extends MemeBlocState {
  const factory MemeBlocStateLoading({final Meme? meme}) =
      _$MemeBlocStateLoadingImpl;
  const MemeBlocStateLoading._() : super._();

  @override
  Meme? get meme;
  @override
  @JsonKey(ignore: true)
  _$$MemeBlocStateLoadingImplCopyWith<_$MemeBlocStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeBlocStateIdleImplCopyWith<$Res>
    implements $MemeBlocStateCopyWith<$Res> {
  factory _$$MemeBlocStateIdleImplCopyWith(_$MemeBlocStateIdleImpl value,
          $Res Function(_$MemeBlocStateIdleImpl) then) =
      __$$MemeBlocStateIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meme meme});

  @override
  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class __$$MemeBlocStateIdleImplCopyWithImpl<$Res>
    extends _$MemeBlocStateCopyWithImpl<$Res, _$MemeBlocStateIdleImpl>
    implements _$$MemeBlocStateIdleImplCopyWith<$Res> {
  __$$MemeBlocStateIdleImplCopyWithImpl(_$MemeBlocStateIdleImpl _value,
      $Res Function(_$MemeBlocStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_$MemeBlocStateIdleImpl(
      meme: null == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MemeCopyWith<$Res> get meme {
    return $MemeCopyWith<$Res>(_value.meme, (value) {
      return _then(_value.copyWith(meme: value));
    });
  }
}

/// @nodoc

class _$MemeBlocStateIdleImpl extends MemeBlocStateIdle {
  const _$MemeBlocStateIdleImpl({required this.meme}) : super._();

  @override
  final Meme meme;

  @override
  String toString() {
    return 'MemeBlocState.idle(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeBlocStateIdleImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeBlocStateIdleImplCopyWith<_$MemeBlocStateIdleImpl> get copyWith =>
      __$$MemeBlocStateIdleImplCopyWithImpl<_$MemeBlocStateIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme? meme) loading,
    required TResult Function(Meme meme) idle,
    required TResult Function(Meme? meme, Object error) error,
  }) {
    return idle(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme? meme)? loading,
    TResult? Function(Meme meme)? idle,
    TResult? Function(Meme? meme, Object error)? error,
  }) {
    return idle?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme? meme)? loading,
    TResult Function(Meme meme)? idle,
    TResult Function(Meme? meme, Object error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocStateLoading value) loading,
    required TResult Function(MemeBlocStateIdle value) idle,
    required TResult Function(MemeBlocStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocStateLoading value)? loading,
    TResult? Function(MemeBlocStateIdle value)? idle,
    TResult? Function(MemeBlocStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocStateLoading value)? loading,
    TResult Function(MemeBlocStateIdle value)? idle,
    TResult Function(MemeBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MemeBlocStateIdle extends MemeBlocState {
  const factory MemeBlocStateIdle({required final Meme meme}) =
      _$MemeBlocStateIdleImpl;
  const MemeBlocStateIdle._() : super._();

  @override
  Meme get meme;
  @override
  @JsonKey(ignore: true)
  _$$MemeBlocStateIdleImplCopyWith<_$MemeBlocStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeBlocStateErrorImplCopyWith<$Res>
    implements $MemeBlocStateCopyWith<$Res> {
  factory _$$MemeBlocStateErrorImplCopyWith(_$MemeBlocStateErrorImpl value,
          $Res Function(_$MemeBlocStateErrorImpl) then) =
      __$$MemeBlocStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meme? meme, Object error});

  @override
  $MemeCopyWith<$Res>? get meme;
}

/// @nodoc
class __$$MemeBlocStateErrorImplCopyWithImpl<$Res>
    extends _$MemeBlocStateCopyWithImpl<$Res, _$MemeBlocStateErrorImpl>
    implements _$$MemeBlocStateErrorImplCopyWith<$Res> {
  __$$MemeBlocStateErrorImplCopyWithImpl(_$MemeBlocStateErrorImpl _value,
      $Res Function(_$MemeBlocStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = freezed,
    Object? error = null,
  }) {
    return _then(_$MemeBlocStateErrorImpl(
      meme: freezed == meme
          ? _value.meme
          : meme // ignore: cast_nullable_to_non_nullable
              as Meme?,
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$MemeBlocStateErrorImpl extends MemeBlocStateError {
  const _$MemeBlocStateErrorImpl({this.meme, required this.error}) : super._();

  @override
  final Meme? meme;
  @override
  final Object error;

  @override
  String toString() {
    return 'MemeBlocState.error(meme: $meme, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeBlocStateErrorImpl &&
            (identical(other.meme, meme) || other.meme == meme) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, meme, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeBlocStateErrorImplCopyWith<_$MemeBlocStateErrorImpl> get copyWith =>
      __$$MemeBlocStateErrorImplCopyWithImpl<_$MemeBlocStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meme? meme) loading,
    required TResult Function(Meme meme) idle,
    required TResult Function(Meme? meme, Object error) error,
  }) {
    return error(meme, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meme? meme)? loading,
    TResult? Function(Meme meme)? idle,
    TResult? Function(Meme? meme, Object error)? error,
  }) {
    return error?.call(meme, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meme? meme)? loading,
    TResult Function(Meme meme)? idle,
    TResult Function(Meme? meme, Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(meme, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeBlocStateLoading value) loading,
    required TResult Function(MemeBlocStateIdle value) idle,
    required TResult Function(MemeBlocStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeBlocStateLoading value)? loading,
    TResult? Function(MemeBlocStateIdle value)? idle,
    TResult? Function(MemeBlocStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeBlocStateLoading value)? loading,
    TResult Function(MemeBlocStateIdle value)? idle,
    TResult Function(MemeBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MemeBlocStateError extends MemeBlocState {
  const factory MemeBlocStateError(
      {final Meme? meme,
      required final Object error}) = _$MemeBlocStateErrorImpl;
  const MemeBlocStateError._() : super._();

  @override
  Meme? get meme;
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$MemeBlocStateErrorImplCopyWith<_$MemeBlocStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
