// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieResponse movieResponse) loaded,
    required TResult Function(AppFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieResponse movieResponse)? loaded,
    TResult? Function(AppFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieResponse movieResponse)? loaded,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieStateInitial value) initial,
    required TResult Function(_MovieStateLoading value) loading,
    required TResult Function(_MovieStateLoaded value) loaded,
    required TResult Function(_MovieStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieStateInitial value)? initial,
    TResult? Function(_MovieStateLoading value)? loading,
    TResult? Function(_MovieStateLoaded value)? loaded,
    TResult? Function(_MovieStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieStateInitial value)? initial,
    TResult Function(_MovieStateLoading value)? loading,
    TResult Function(_MovieStateLoaded value)? loaded,
    TResult Function(_MovieStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MovieStateInitialCopyWith<$Res> {
  factory _$$_MovieStateInitialCopyWith(_$_MovieStateInitial value,
          $Res Function(_$_MovieStateInitial) then) =
      __$$_MovieStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieStateInitialCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_MovieStateInitial>
    implements _$$_MovieStateInitialCopyWith<$Res> {
  __$$_MovieStateInitialCopyWithImpl(
      _$_MovieStateInitial _value, $Res Function(_$_MovieStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MovieStateInitial implements _MovieStateInitial {
  const _$_MovieStateInitial();

  @override
  String toString() {
    return 'MovieState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieResponse movieResponse) loaded,
    required TResult Function(AppFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieResponse movieResponse)? loaded,
    TResult? Function(AppFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieResponse movieResponse)? loaded,
    TResult Function(AppFailure error)? error,
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
    required TResult Function(_MovieStateInitial value) initial,
    required TResult Function(_MovieStateLoading value) loading,
    required TResult Function(_MovieStateLoaded value) loaded,
    required TResult Function(_MovieStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieStateInitial value)? initial,
    TResult? Function(_MovieStateLoading value)? loading,
    TResult? Function(_MovieStateLoaded value)? loaded,
    TResult? Function(_MovieStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieStateInitial value)? initial,
    TResult Function(_MovieStateLoading value)? loading,
    TResult Function(_MovieStateLoaded value)? loaded,
    TResult Function(_MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MovieStateInitial implements MovieState {
  const factory _MovieStateInitial() = _$_MovieStateInitial;
}

/// @nodoc
abstract class _$$_MovieStateLoadingCopyWith<$Res> {
  factory _$$_MovieStateLoadingCopyWith(_$_MovieStateLoading value,
          $Res Function(_$_MovieStateLoading) then) =
      __$$_MovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieStateLoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_MovieStateLoading>
    implements _$$_MovieStateLoadingCopyWith<$Res> {
  __$$_MovieStateLoadingCopyWithImpl(
      _$_MovieStateLoading _value, $Res Function(_$_MovieStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MovieStateLoading implements _MovieStateLoading {
  const _$_MovieStateLoading();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieResponse movieResponse) loaded,
    required TResult Function(AppFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieResponse movieResponse)? loaded,
    TResult? Function(AppFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieResponse movieResponse)? loaded,
    TResult Function(AppFailure error)? error,
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
    required TResult Function(_MovieStateInitial value) initial,
    required TResult Function(_MovieStateLoading value) loading,
    required TResult Function(_MovieStateLoaded value) loaded,
    required TResult Function(_MovieStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieStateInitial value)? initial,
    TResult? Function(_MovieStateLoading value)? loading,
    TResult? Function(_MovieStateLoaded value)? loaded,
    TResult? Function(_MovieStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieStateInitial value)? initial,
    TResult Function(_MovieStateLoading value)? loading,
    TResult Function(_MovieStateLoaded value)? loaded,
    TResult Function(_MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MovieStateLoading implements MovieState {
  const factory _MovieStateLoading() = _$_MovieStateLoading;
}

/// @nodoc
abstract class _$$_MovieStateLoadedCopyWith<$Res> {
  factory _$$_MovieStateLoadedCopyWith(
          _$_MovieStateLoaded value, $Res Function(_$_MovieStateLoaded) then) =
      __$$_MovieStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieResponse movieResponse});
}

/// @nodoc
class __$$_MovieStateLoadedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_MovieStateLoaded>
    implements _$$_MovieStateLoadedCopyWith<$Res> {
  __$$_MovieStateLoadedCopyWithImpl(
      _$_MovieStateLoaded _value, $Res Function(_$_MovieStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieResponse = null,
  }) {
    return _then(_$_MovieStateLoaded(
      null == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as MovieResponse,
    ));
  }
}

/// @nodoc

class _$_MovieStateLoaded implements _MovieStateLoaded {
  const _$_MovieStateLoaded(this.movieResponse);

  @override
  final MovieResponse movieResponse;

  @override
  String toString() {
    return 'MovieState.loaded(movieResponse: $movieResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieStateLoaded &&
            (identical(other.movieResponse, movieResponse) ||
                other.movieResponse == movieResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieStateLoadedCopyWith<_$_MovieStateLoaded> get copyWith =>
      __$$_MovieStateLoadedCopyWithImpl<_$_MovieStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieResponse movieResponse) loaded,
    required TResult Function(AppFailure error) error,
  }) {
    return loaded(movieResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieResponse movieResponse)? loaded,
    TResult? Function(AppFailure error)? error,
  }) {
    return loaded?.call(movieResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieResponse movieResponse)? loaded,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movieResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieStateInitial value) initial,
    required TResult Function(_MovieStateLoading value) loading,
    required TResult Function(_MovieStateLoaded value) loaded,
    required TResult Function(_MovieStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieStateInitial value)? initial,
    TResult? Function(_MovieStateLoading value)? loading,
    TResult? Function(_MovieStateLoaded value)? loaded,
    TResult? Function(_MovieStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieStateInitial value)? initial,
    TResult Function(_MovieStateLoading value)? loading,
    TResult Function(_MovieStateLoaded value)? loaded,
    TResult Function(_MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MovieStateLoaded implements MovieState {
  const factory _MovieStateLoaded(final MovieResponse movieResponse) =
      _$_MovieStateLoaded;

  MovieResponse get movieResponse;
  @JsonKey(ignore: true)
  _$$_MovieStateLoadedCopyWith<_$_MovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovieStateErrorCopyWith<$Res> {
  factory _$$_MovieStateErrorCopyWith(
          _$_MovieStateError value, $Res Function(_$_MovieStateError) then) =
      __$$_MovieStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure error});
}

/// @nodoc
class __$$_MovieStateErrorCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_MovieStateError>
    implements _$$_MovieStateErrorCopyWith<$Res> {
  __$$_MovieStateErrorCopyWithImpl(
      _$_MovieStateError _value, $Res Function(_$_MovieStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_MovieStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }
}

/// @nodoc

class _$_MovieStateError implements _MovieStateError {
  const _$_MovieStateError(this.error);

  @override
  final AppFailure error;

  @override
  String toString() {
    return 'MovieState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieStateErrorCopyWith<_$_MovieStateError> get copyWith =>
      __$$_MovieStateErrorCopyWithImpl<_$_MovieStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieResponse movieResponse) loaded,
    required TResult Function(AppFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieResponse movieResponse)? loaded,
    TResult? Function(AppFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieResponse movieResponse)? loaded,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieStateInitial value) initial,
    required TResult Function(_MovieStateLoading value) loading,
    required TResult Function(_MovieStateLoaded value) loaded,
    required TResult Function(_MovieStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieStateInitial value)? initial,
    TResult? Function(_MovieStateLoading value)? loading,
    TResult? Function(_MovieStateLoaded value)? loaded,
    TResult? Function(_MovieStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieStateInitial value)? initial,
    TResult Function(_MovieStateLoading value)? loading,
    TResult Function(_MovieStateLoaded value)? loaded,
    TResult Function(_MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MovieStateError implements MovieState {
  const factory _MovieStateError(final AppFailure error) = _$_MovieStateError;

  AppFailure get error;
  @JsonKey(ignore: true)
  _$$_MovieStateErrorCopyWith<_$_MovieStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
