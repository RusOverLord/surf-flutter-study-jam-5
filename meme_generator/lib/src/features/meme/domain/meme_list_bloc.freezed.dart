// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemeListBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(Meme meme) add,
    required TResult Function(Meme meme) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(Meme meme)? add,
    TResult? Function(Meme meme)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(Meme meme)? add,
    TResult Function(Meme meme)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocEventRefresh value) refresh,
    required TResult Function(MemeListBlocEventAdd value) add,
    required TResult Function(MemeListBlocEventRemove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocEventRefresh value)? refresh,
    TResult? Function(MemeListBlocEventAdd value)? add,
    TResult? Function(MemeListBlocEventRemove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocEventRefresh value)? refresh,
    TResult Function(MemeListBlocEventAdd value)? add,
    TResult Function(MemeListBlocEventRemove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeListBlocEventCopyWith<$Res> {
  factory $MemeListBlocEventCopyWith(
          MemeListBlocEvent value, $Res Function(MemeListBlocEvent) then) =
      _$MemeListBlocEventCopyWithImpl<$Res, MemeListBlocEvent>;
}

/// @nodoc
class _$MemeListBlocEventCopyWithImpl<$Res, $Val extends MemeListBlocEvent>
    implements $MemeListBlocEventCopyWith<$Res> {
  _$MemeListBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MemeListBlocEventRefreshImplCopyWith<$Res> {
  factory _$$MemeListBlocEventRefreshImplCopyWith(
          _$MemeListBlocEventRefreshImpl value,
          $Res Function(_$MemeListBlocEventRefreshImpl) then) =
      __$$MemeListBlocEventRefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MemeListBlocEventRefreshImplCopyWithImpl<$Res>
    extends _$MemeListBlocEventCopyWithImpl<$Res,
        _$MemeListBlocEventRefreshImpl>
    implements _$$MemeListBlocEventRefreshImplCopyWith<$Res> {
  __$$MemeListBlocEventRefreshImplCopyWithImpl(
      _$MemeListBlocEventRefreshImpl _value,
      $Res Function(_$MemeListBlocEventRefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MemeListBlocEventRefreshImpl extends MemeListBlocEventRefresh {
  const _$MemeListBlocEventRefreshImpl() : super._();

  @override
  String toString() {
    return 'MemeListBlocEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocEventRefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(Meme meme) add,
    required TResult Function(Meme meme) remove,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(Meme meme)? add,
    TResult? Function(Meme meme)? remove,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(Meme meme)? add,
    TResult Function(Meme meme)? remove,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocEventRefresh value) refresh,
    required TResult Function(MemeListBlocEventAdd value) add,
    required TResult Function(MemeListBlocEventRemove value) remove,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocEventRefresh value)? refresh,
    TResult? Function(MemeListBlocEventAdd value)? add,
    TResult? Function(MemeListBlocEventRemove value)? remove,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocEventRefresh value)? refresh,
    TResult Function(MemeListBlocEventAdd value)? add,
    TResult Function(MemeListBlocEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocEventRefresh extends MemeListBlocEvent {
  const factory MemeListBlocEventRefresh() = _$MemeListBlocEventRefreshImpl;
  const MemeListBlocEventRefresh._() : super._();
}

/// @nodoc
abstract class _$$MemeListBlocEventAddImplCopyWith<$Res> {
  factory _$$MemeListBlocEventAddImplCopyWith(_$MemeListBlocEventAddImpl value,
          $Res Function(_$MemeListBlocEventAddImpl) then) =
      __$$MemeListBlocEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Meme meme});

  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class __$$MemeListBlocEventAddImplCopyWithImpl<$Res>
    extends _$MemeListBlocEventCopyWithImpl<$Res, _$MemeListBlocEventAddImpl>
    implements _$$MemeListBlocEventAddImplCopyWith<$Res> {
  __$$MemeListBlocEventAddImplCopyWithImpl(_$MemeListBlocEventAddImpl _value,
      $Res Function(_$MemeListBlocEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_$MemeListBlocEventAddImpl(
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

class _$MemeListBlocEventAddImpl extends MemeListBlocEventAdd {
  const _$MemeListBlocEventAddImpl({required this.meme}) : super._();

  @override
  final Meme meme;

  @override
  String toString() {
    return 'MemeListBlocEvent.add(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocEventAddImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeListBlocEventAddImplCopyWith<_$MemeListBlocEventAddImpl>
      get copyWith =>
          __$$MemeListBlocEventAddImplCopyWithImpl<_$MemeListBlocEventAddImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(Meme meme) add,
    required TResult Function(Meme meme) remove,
  }) {
    return add(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(Meme meme)? add,
    TResult? Function(Meme meme)? remove,
  }) {
    return add?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(Meme meme)? add,
    TResult Function(Meme meme)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocEventRefresh value) refresh,
    required TResult Function(MemeListBlocEventAdd value) add,
    required TResult Function(MemeListBlocEventRemove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocEventRefresh value)? refresh,
    TResult? Function(MemeListBlocEventAdd value)? add,
    TResult? Function(MemeListBlocEventRemove value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocEventRefresh value)? refresh,
    TResult Function(MemeListBlocEventAdd value)? add,
    TResult Function(MemeListBlocEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocEventAdd extends MemeListBlocEvent {
  const factory MemeListBlocEventAdd({required final Meme meme}) =
      _$MemeListBlocEventAddImpl;
  const MemeListBlocEventAdd._() : super._();

  Meme get meme;
  @JsonKey(ignore: true)
  _$$MemeListBlocEventAddImplCopyWith<_$MemeListBlocEventAddImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeListBlocEventRemoveImplCopyWith<$Res> {
  factory _$$MemeListBlocEventRemoveImplCopyWith(
          _$MemeListBlocEventRemoveImpl value,
          $Res Function(_$MemeListBlocEventRemoveImpl) then) =
      __$$MemeListBlocEventRemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Meme meme});

  $MemeCopyWith<$Res> get meme;
}

/// @nodoc
class __$$MemeListBlocEventRemoveImplCopyWithImpl<$Res>
    extends _$MemeListBlocEventCopyWithImpl<$Res, _$MemeListBlocEventRemoveImpl>
    implements _$$MemeListBlocEventRemoveImplCopyWith<$Res> {
  __$$MemeListBlocEventRemoveImplCopyWithImpl(
      _$MemeListBlocEventRemoveImpl _value,
      $Res Function(_$MemeListBlocEventRemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meme = null,
  }) {
    return _then(_$MemeListBlocEventRemoveImpl(
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

class _$MemeListBlocEventRemoveImpl extends MemeListBlocEventRemove {
  const _$MemeListBlocEventRemoveImpl({required this.meme}) : super._();

  @override
  final Meme meme;

  @override
  String toString() {
    return 'MemeListBlocEvent.remove(meme: $meme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocEventRemoveImpl &&
            (identical(other.meme, meme) || other.meme == meme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeListBlocEventRemoveImplCopyWith<_$MemeListBlocEventRemoveImpl>
      get copyWith => __$$MemeListBlocEventRemoveImplCopyWithImpl<
          _$MemeListBlocEventRemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(Meme meme) add,
    required TResult Function(Meme meme) remove,
  }) {
    return remove(meme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(Meme meme)? add,
    TResult? Function(Meme meme)? remove,
  }) {
    return remove?.call(meme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(Meme meme)? add,
    TResult Function(Meme meme)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(meme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocEventRefresh value) refresh,
    required TResult Function(MemeListBlocEventAdd value) add,
    required TResult Function(MemeListBlocEventRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocEventRefresh value)? refresh,
    TResult? Function(MemeListBlocEventAdd value)? add,
    TResult? Function(MemeListBlocEventRemove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocEventRefresh value)? refresh,
    TResult Function(MemeListBlocEventAdd value)? add,
    TResult Function(MemeListBlocEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocEventRemove extends MemeListBlocEvent {
  const factory MemeListBlocEventRemove({required final Meme meme}) =
      _$MemeListBlocEventRemoveImpl;
  const MemeListBlocEventRemove._() : super._();

  Meme get meme;
  @JsonKey(ignore: true)
  _$$MemeListBlocEventRemoveImplCopyWith<_$MemeListBlocEventRemoveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemeListBlocState {
  Set<Meme>? get memeList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Meme>? memeList) loading,
    required TResult Function(Set<Meme> memeList) idle,
    required TResult Function(Set<Meme>? memeList, Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<Meme>? memeList)? loading,
    TResult? Function(Set<Meme> memeList)? idle,
    TResult? Function(Set<Meme>? memeList, Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Meme>? memeList)? loading,
    TResult Function(Set<Meme> memeList)? idle,
    TResult Function(Set<Meme>? memeList, Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocStateLoading value) loading,
    required TResult Function(MemeListBlocStateIdle value) idle,
    required TResult Function(MemeListBlocStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocStateLoading value)? loading,
    TResult? Function(MemeListBlocStateIdle value)? idle,
    TResult? Function(MemeListBlocStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocStateLoading value)? loading,
    TResult Function(MemeListBlocStateIdle value)? idle,
    TResult Function(MemeListBlocStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemeListBlocStateCopyWith<MemeListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeListBlocStateCopyWith<$Res> {
  factory $MemeListBlocStateCopyWith(
          MemeListBlocState value, $Res Function(MemeListBlocState) then) =
      _$MemeListBlocStateCopyWithImpl<$Res, MemeListBlocState>;
  @useResult
  $Res call({Set<Meme> memeList});
}

/// @nodoc
class _$MemeListBlocStateCopyWithImpl<$Res, $Val extends MemeListBlocState>
    implements $MemeListBlocStateCopyWith<$Res> {
  _$MemeListBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memeList = null,
  }) {
    return _then(_value.copyWith(
      memeList: null == memeList
          ? _value.memeList!
          : memeList // ignore: cast_nullable_to_non_nullable
              as Set<Meme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemeListBlocStateLoadingImplCopyWith<$Res>
    implements $MemeListBlocStateCopyWith<$Res> {
  factory _$$MemeListBlocStateLoadingImplCopyWith(
          _$MemeListBlocStateLoadingImpl value,
          $Res Function(_$MemeListBlocStateLoadingImpl) then) =
      __$$MemeListBlocStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Meme>? memeList});
}

/// @nodoc
class __$$MemeListBlocStateLoadingImplCopyWithImpl<$Res>
    extends _$MemeListBlocStateCopyWithImpl<$Res,
        _$MemeListBlocStateLoadingImpl>
    implements _$$MemeListBlocStateLoadingImplCopyWith<$Res> {
  __$$MemeListBlocStateLoadingImplCopyWithImpl(
      _$MemeListBlocStateLoadingImpl _value,
      $Res Function(_$MemeListBlocStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memeList = freezed,
  }) {
    return _then(_$MemeListBlocStateLoadingImpl(
      memeList: freezed == memeList
          ? _value._memeList
          : memeList // ignore: cast_nullable_to_non_nullable
              as Set<Meme>?,
    ));
  }
}

/// @nodoc

class _$MemeListBlocStateLoadingImpl extends MemeListBlocStateLoading {
  const _$MemeListBlocStateLoadingImpl({final Set<Meme>? memeList})
      : _memeList = memeList,
        super._();

  final Set<Meme>? _memeList;
  @override
  Set<Meme>? get memeList {
    final value = _memeList;
    if (value == null) return null;
    if (_memeList is EqualUnmodifiableSetView) return _memeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'MemeListBlocState.loading(memeList: $memeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._memeList, _memeList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeListBlocStateLoadingImplCopyWith<_$MemeListBlocStateLoadingImpl>
      get copyWith => __$$MemeListBlocStateLoadingImplCopyWithImpl<
          _$MemeListBlocStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Meme>? memeList) loading,
    required TResult Function(Set<Meme> memeList) idle,
    required TResult Function(Set<Meme>? memeList, Object error) error,
  }) {
    return loading(memeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<Meme>? memeList)? loading,
    TResult? Function(Set<Meme> memeList)? idle,
    TResult? Function(Set<Meme>? memeList, Object error)? error,
  }) {
    return loading?.call(memeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Meme>? memeList)? loading,
    TResult Function(Set<Meme> memeList)? idle,
    TResult Function(Set<Meme>? memeList, Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(memeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocStateLoading value) loading,
    required TResult Function(MemeListBlocStateIdle value) idle,
    required TResult Function(MemeListBlocStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocStateLoading value)? loading,
    TResult? Function(MemeListBlocStateIdle value)? idle,
    TResult? Function(MemeListBlocStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocStateLoading value)? loading,
    TResult Function(MemeListBlocStateIdle value)? idle,
    TResult Function(MemeListBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocStateLoading extends MemeListBlocState {
  const factory MemeListBlocStateLoading({final Set<Meme>? memeList}) =
      _$MemeListBlocStateLoadingImpl;
  const MemeListBlocStateLoading._() : super._();

  @override
  Set<Meme>? get memeList;
  @override
  @JsonKey(ignore: true)
  _$$MemeListBlocStateLoadingImplCopyWith<_$MemeListBlocStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeListBlocStateIdleImplCopyWith<$Res>
    implements $MemeListBlocStateCopyWith<$Res> {
  factory _$$MemeListBlocStateIdleImplCopyWith(
          _$MemeListBlocStateIdleImpl value,
          $Res Function(_$MemeListBlocStateIdleImpl) then) =
      __$$MemeListBlocStateIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Meme> memeList});
}

/// @nodoc
class __$$MemeListBlocStateIdleImplCopyWithImpl<$Res>
    extends _$MemeListBlocStateCopyWithImpl<$Res, _$MemeListBlocStateIdleImpl>
    implements _$$MemeListBlocStateIdleImplCopyWith<$Res> {
  __$$MemeListBlocStateIdleImplCopyWithImpl(_$MemeListBlocStateIdleImpl _value,
      $Res Function(_$MemeListBlocStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memeList = null,
  }) {
    return _then(_$MemeListBlocStateIdleImpl(
      memeList: null == memeList
          ? _value._memeList
          : memeList // ignore: cast_nullable_to_non_nullable
              as Set<Meme>,
    ));
  }
}

/// @nodoc

class _$MemeListBlocStateIdleImpl extends MemeListBlocStateIdle {
  const _$MemeListBlocStateIdleImpl({required final Set<Meme> memeList})
      : _memeList = memeList,
        super._();

  final Set<Meme> _memeList;
  @override
  Set<Meme> get memeList {
    if (_memeList is EqualUnmodifiableSetView) return _memeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_memeList);
  }

  @override
  String toString() {
    return 'MemeListBlocState.idle(memeList: $memeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocStateIdleImpl &&
            const DeepCollectionEquality().equals(other._memeList, _memeList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeListBlocStateIdleImplCopyWith<_$MemeListBlocStateIdleImpl>
      get copyWith => __$$MemeListBlocStateIdleImplCopyWithImpl<
          _$MemeListBlocStateIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Meme>? memeList) loading,
    required TResult Function(Set<Meme> memeList) idle,
    required TResult Function(Set<Meme>? memeList, Object error) error,
  }) {
    return idle(memeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<Meme>? memeList)? loading,
    TResult? Function(Set<Meme> memeList)? idle,
    TResult? Function(Set<Meme>? memeList, Object error)? error,
  }) {
    return idle?.call(memeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Meme>? memeList)? loading,
    TResult Function(Set<Meme> memeList)? idle,
    TResult Function(Set<Meme>? memeList, Object error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(memeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocStateLoading value) loading,
    required TResult Function(MemeListBlocStateIdle value) idle,
    required TResult Function(MemeListBlocStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocStateLoading value)? loading,
    TResult? Function(MemeListBlocStateIdle value)? idle,
    TResult? Function(MemeListBlocStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocStateLoading value)? loading,
    TResult Function(MemeListBlocStateIdle value)? idle,
    TResult Function(MemeListBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocStateIdle extends MemeListBlocState {
  const factory MemeListBlocStateIdle({required final Set<Meme> memeList}) =
      _$MemeListBlocStateIdleImpl;
  const MemeListBlocStateIdle._() : super._();

  @override
  Set<Meme> get memeList;
  @override
  @JsonKey(ignore: true)
  _$$MemeListBlocStateIdleImplCopyWith<_$MemeListBlocStateIdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemeListBlocStateErrorImplCopyWith<$Res>
    implements $MemeListBlocStateCopyWith<$Res> {
  factory _$$MemeListBlocStateErrorImplCopyWith(
          _$MemeListBlocStateErrorImpl value,
          $Res Function(_$MemeListBlocStateErrorImpl) then) =
      __$$MemeListBlocStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Meme>? memeList, Object error});
}

/// @nodoc
class __$$MemeListBlocStateErrorImplCopyWithImpl<$Res>
    extends _$MemeListBlocStateCopyWithImpl<$Res, _$MemeListBlocStateErrorImpl>
    implements _$$MemeListBlocStateErrorImplCopyWith<$Res> {
  __$$MemeListBlocStateErrorImplCopyWithImpl(
      _$MemeListBlocStateErrorImpl _value,
      $Res Function(_$MemeListBlocStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memeList = freezed,
    Object? error = null,
  }) {
    return _then(_$MemeListBlocStateErrorImpl(
      memeList: freezed == memeList
          ? _value._memeList
          : memeList // ignore: cast_nullable_to_non_nullable
              as Set<Meme>?,
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$MemeListBlocStateErrorImpl extends MemeListBlocStateError {
  const _$MemeListBlocStateErrorImpl(
      {final Set<Meme>? memeList, required this.error})
      : _memeList = memeList,
        super._();

  final Set<Meme>? _memeList;
  @override
  Set<Meme>? get memeList {
    final value = _memeList;
    if (value == null) return null;
    if (_memeList is EqualUnmodifiableSetView) return _memeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final Object error;

  @override
  String toString() {
    return 'MemeListBlocState.error(memeList: $memeList, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeListBlocStateErrorImpl &&
            const DeepCollectionEquality().equals(other._memeList, _memeList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_memeList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeListBlocStateErrorImplCopyWith<_$MemeListBlocStateErrorImpl>
      get copyWith => __$$MemeListBlocStateErrorImplCopyWithImpl<
          _$MemeListBlocStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Meme>? memeList) loading,
    required TResult Function(Set<Meme> memeList) idle,
    required TResult Function(Set<Meme>? memeList, Object error) error,
  }) {
    return error(memeList, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<Meme>? memeList)? loading,
    TResult? Function(Set<Meme> memeList)? idle,
    TResult? Function(Set<Meme>? memeList, Object error)? error,
  }) {
    return error?.call(memeList, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Meme>? memeList)? loading,
    TResult Function(Set<Meme> memeList)? idle,
    TResult Function(Set<Meme>? memeList, Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(memeList, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemeListBlocStateLoading value) loading,
    required TResult Function(MemeListBlocStateIdle value) idle,
    required TResult Function(MemeListBlocStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MemeListBlocStateLoading value)? loading,
    TResult? Function(MemeListBlocStateIdle value)? idle,
    TResult? Function(MemeListBlocStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemeListBlocStateLoading value)? loading,
    TResult Function(MemeListBlocStateIdle value)? idle,
    TResult Function(MemeListBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MemeListBlocStateError extends MemeListBlocState {
  const factory MemeListBlocStateError(
      {final Set<Meme>? memeList,
      required final Object error}) = _$MemeListBlocStateErrorImpl;
  const MemeListBlocStateError._() : super._();

  @override
  Set<Meme>? get memeList;
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$MemeListBlocStateErrorImplCopyWith<_$MemeListBlocStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
