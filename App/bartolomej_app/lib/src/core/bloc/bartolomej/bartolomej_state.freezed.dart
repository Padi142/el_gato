// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bartolomej_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BartolomejState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingError,
    required TResult Function(StatusModel status) loadedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingError value) loadingError,
    required TResult Function(LoadedSTatus value) loadedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BartolomejStateCopyWith<$Res> {
  factory $BartolomejStateCopyWith(
          BartolomejState value, $Res Function(BartolomejState) then) =
      _$BartolomejStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BartolomejStateCopyWithImpl<$Res>
    implements $BartolomejStateCopyWith<$Res> {
  _$BartolomejStateCopyWithImpl(this._value, this._then);

  final BartolomejState _value;
  // ignore: unused_field
  final $Res Function(BartolomejState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$BartolomejStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BartolomejState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingError,
    required TResult Function(StatusModel status) loadedStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingError value) loadingError,
    required TResult Function(LoadedSTatus value) loadedStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BartolomejState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$BartolomejStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'BartolomejState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingError,
    required TResult Function(StatusModel status) loadedStatus,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingError value) loadingError,
    required TResult Function(LoadedSTatus value) loadedStatus,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BartolomejState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadingErrorCopyWith<$Res> {
  factory _$$LoadingErrorCopyWith(
          _$LoadingError value, $Res Function(_$LoadingError) then) =
      __$$LoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingErrorCopyWithImpl<$Res>
    extends _$BartolomejStateCopyWithImpl<$Res>
    implements _$$LoadingErrorCopyWith<$Res> {
  __$$LoadingErrorCopyWithImpl(
      _$LoadingError _value, $Res Function(_$LoadingError) _then)
      : super(_value, (v) => _then(v as _$LoadingError));

  @override
  _$LoadingError get _value => super._value as _$LoadingError;
}

/// @nodoc

class _$LoadingError implements LoadingError {
  const _$LoadingError();

  @override
  String toString() {
    return 'BartolomejState.loadingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingError,
    required TResult Function(StatusModel status) loadedStatus,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingError value) loadingError,
    required TResult Function(LoadedSTatus value) loadedStatus,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class LoadingError implements BartolomejState {
  const factory LoadingError() = _$LoadingError;
}

/// @nodoc
abstract class _$$LoadedSTatusCopyWith<$Res> {
  factory _$$LoadedSTatusCopyWith(
          _$LoadedSTatus value, $Res Function(_$LoadedSTatus) then) =
      __$$LoadedSTatusCopyWithImpl<$Res>;
  $Res call({StatusModel status});
}

/// @nodoc
class __$$LoadedSTatusCopyWithImpl<$Res>
    extends _$BartolomejStateCopyWithImpl<$Res>
    implements _$$LoadedSTatusCopyWith<$Res> {
  __$$LoadedSTatusCopyWithImpl(
      _$LoadedSTatus _value, $Res Function(_$LoadedSTatus) _then)
      : super(_value, (v) => _then(v as _$LoadedSTatus));

  @override
  _$LoadedSTatus get _value => super._value as _$LoadedSTatus;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$LoadedSTatus(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel,
    ));
  }
}

/// @nodoc

class _$LoadedSTatus implements LoadedSTatus {
  const _$LoadedSTatus(this.status);

  @override
  final StatusModel status;

  @override
  String toString() {
    return 'BartolomejState.loadedStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSTatus &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$LoadedSTatusCopyWith<_$LoadedSTatus> get copyWith =>
      __$$LoadedSTatusCopyWithImpl<_$LoadedSTatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingError,
    required TResult Function(StatusModel status) loadedStatus,
  }) {
    return loadedStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
  }) {
    return loadedStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingError,
    TResult Function(StatusModel status)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loadedStatus != null) {
      return loadedStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingError value) loadingError,
    required TResult Function(LoadedSTatus value) loadedStatus,
  }) {
    return loadedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
  }) {
    return loadedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingError value)? loadingError,
    TResult Function(LoadedSTatus value)? loadedStatus,
    required TResult orElse(),
  }) {
    if (loadedStatus != null) {
      return loadedStatus(this);
    }
    return orElse();
  }
}

abstract class LoadedSTatus implements BartolomejState {
  const factory LoadedSTatus(final StatusModel status) = _$LoadedSTatus;

  StatusModel get status;
  @JsonKey(ignore: true)
  _$$LoadedSTatusCopyWith<_$LoadedSTatus> get copyWith =>
      throw _privateConstructorUsedError;
}
