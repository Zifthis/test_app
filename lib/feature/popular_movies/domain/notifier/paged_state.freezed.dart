// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paged_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagedState {
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
    required TResult Function(_PagedStateInitial value) initial,
    required TResult Function(_PagedStateLoading value) loading,
    required TResult Function(_PagedStateLoaded value) loaded,
    required TResult Function(_PagedStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PagedStateInitial value)? initial,
    TResult? Function(_PagedStateLoading value)? loading,
    TResult? Function(_PagedStateLoaded value)? loaded,
    TResult? Function(_PagedStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PagedStateInitial value)? initial,
    TResult Function(_PagedStateLoading value)? loading,
    TResult Function(_PagedStateLoaded value)? loaded,
    TResult Function(_PagedStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedStateCopyWith<$Res> {
  factory $PagedStateCopyWith(
          PagedState value, $Res Function(PagedState) then) =
      _$PagedStateCopyWithImpl<$Res, PagedState>;
}

/// @nodoc
class _$PagedStateCopyWithImpl<$Res, $Val extends PagedState>
    implements $PagedStateCopyWith<$Res> {
  _$PagedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PagedStateInitialCopyWith<$Res> {
  factory _$$_PagedStateInitialCopyWith(_$_PagedStateInitial value,
          $Res Function(_$_PagedStateInitial) then) =
      __$$_PagedStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PagedStateInitialCopyWithImpl<$Res>
    extends _$PagedStateCopyWithImpl<$Res, _$_PagedStateInitial>
    implements _$$_PagedStateInitialCopyWith<$Res> {
  __$$_PagedStateInitialCopyWithImpl(
      _$_PagedStateInitial _value, $Res Function(_$_PagedStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PagedStateInitial implements _PagedStateInitial {
  const _$_PagedStateInitial();

  @override
  String toString() {
    return 'PagedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PagedStateInitial);
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
    required TResult Function(_PagedStateInitial value) initial,
    required TResult Function(_PagedStateLoading value) loading,
    required TResult Function(_PagedStateLoaded value) loaded,
    required TResult Function(_PagedStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PagedStateInitial value)? initial,
    TResult? Function(_PagedStateLoading value)? loading,
    TResult? Function(_PagedStateLoaded value)? loaded,
    TResult? Function(_PagedStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PagedStateInitial value)? initial,
    TResult Function(_PagedStateLoading value)? loading,
    TResult Function(_PagedStateLoaded value)? loaded,
    TResult Function(_PagedStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PagedStateInitial implements PagedState {
  const factory _PagedStateInitial() = _$_PagedStateInitial;
}

/// @nodoc
abstract class _$$_PagedStateLoadingCopyWith<$Res> {
  factory _$$_PagedStateLoadingCopyWith(_$_PagedStateLoading value,
          $Res Function(_$_PagedStateLoading) then) =
      __$$_PagedStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PagedStateLoadingCopyWithImpl<$Res>
    extends _$PagedStateCopyWithImpl<$Res, _$_PagedStateLoading>
    implements _$$_PagedStateLoadingCopyWith<$Res> {
  __$$_PagedStateLoadingCopyWithImpl(
      _$_PagedStateLoading _value, $Res Function(_$_PagedStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PagedStateLoading implements _PagedStateLoading {
  const _$_PagedStateLoading();

  @override
  String toString() {
    return 'PagedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PagedStateLoading);
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
    required TResult Function(_PagedStateInitial value) initial,
    required TResult Function(_PagedStateLoading value) loading,
    required TResult Function(_PagedStateLoaded value) loaded,
    required TResult Function(_PagedStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PagedStateInitial value)? initial,
    TResult? Function(_PagedStateLoading value)? loading,
    TResult? Function(_PagedStateLoaded value)? loaded,
    TResult? Function(_PagedStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PagedStateInitial value)? initial,
    TResult Function(_PagedStateLoading value)? loading,
    TResult Function(_PagedStateLoaded value)? loaded,
    TResult Function(_PagedStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PagedStateLoading implements PagedState {
  const factory _PagedStateLoading() = _$_PagedStateLoading;
}

/// @nodoc
abstract class _$$_PagedStateLoadedCopyWith<$Res> {
  factory _$$_PagedStateLoadedCopyWith(
          _$_PagedStateLoaded value, $Res Function(_$_PagedStateLoaded) then) =
      __$$_PagedStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieResponse movieResponse});
}

/// @nodoc
class __$$_PagedStateLoadedCopyWithImpl<$Res>
    extends _$PagedStateCopyWithImpl<$Res, _$_PagedStateLoaded>
    implements _$$_PagedStateLoadedCopyWith<$Res> {
  __$$_PagedStateLoadedCopyWithImpl(
      _$_PagedStateLoaded _value, $Res Function(_$_PagedStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieResponse = null,
  }) {
    return _then(_$_PagedStateLoaded(
      null == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as MovieResponse,
    ));
  }
}

/// @nodoc

class _$_PagedStateLoaded implements _PagedStateLoaded {
  const _$_PagedStateLoaded(this.movieResponse);

  @override
  final MovieResponse movieResponse;

  @override
  String toString() {
    return 'PagedState.loaded(movieResponse: $movieResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagedStateLoaded &&
            (identical(other.movieResponse, movieResponse) ||
                other.movieResponse == movieResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagedStateLoadedCopyWith<_$_PagedStateLoaded> get copyWith =>
      __$$_PagedStateLoadedCopyWithImpl<_$_PagedStateLoaded>(this, _$identity);

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
    required TResult Function(_PagedStateInitial value) initial,
    required TResult Function(_PagedStateLoading value) loading,
    required TResult Function(_PagedStateLoaded value) loaded,
    required TResult Function(_PagedStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PagedStateInitial value)? initial,
    TResult? Function(_PagedStateLoading value)? loading,
    TResult? Function(_PagedStateLoaded value)? loaded,
    TResult? Function(_PagedStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PagedStateInitial value)? initial,
    TResult Function(_PagedStateLoading value)? loading,
    TResult Function(_PagedStateLoaded value)? loaded,
    TResult Function(_PagedStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PagedStateLoaded implements PagedState {
  const factory _PagedStateLoaded(final MovieResponse movieResponse) =
      _$_PagedStateLoaded;

  MovieResponse get movieResponse;
  @JsonKey(ignore: true)
  _$$_PagedStateLoadedCopyWith<_$_PagedStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PagedStateErrorCopyWith<$Res> {
  factory _$$_PagedStateErrorCopyWith(
          _$_PagedStateError value, $Res Function(_$_PagedStateError) then) =
      __$$_PagedStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure error});
}

/// @nodoc
class __$$_PagedStateErrorCopyWithImpl<$Res>
    extends _$PagedStateCopyWithImpl<$Res, _$_PagedStateError>
    implements _$$_PagedStateErrorCopyWith<$Res> {
  __$$_PagedStateErrorCopyWithImpl(
      _$_PagedStateError _value, $Res Function(_$_PagedStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PagedStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }
}

/// @nodoc

class _$_PagedStateError implements _PagedStateError {
  const _$_PagedStateError(this.error);

  @override
  final AppFailure error;

  @override
  String toString() {
    return 'PagedState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagedStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagedStateErrorCopyWith<_$_PagedStateError> get copyWith =>
      __$$_PagedStateErrorCopyWithImpl<_$_PagedStateError>(this, _$identity);

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
    required TResult Function(_PagedStateInitial value) initial,
    required TResult Function(_PagedStateLoading value) loading,
    required TResult Function(_PagedStateLoaded value) loaded,
    required TResult Function(_PagedStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PagedStateInitial value)? initial,
    TResult? Function(_PagedStateLoading value)? loading,
    TResult? Function(_PagedStateLoaded value)? loaded,
    TResult? Function(_PagedStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PagedStateInitial value)? initial,
    TResult Function(_PagedStateLoading value)? loading,
    TResult Function(_PagedStateLoaded value)? loaded,
    TResult Function(_PagedStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PagedStateError implements PagedState {
  const factory _PagedStateError(final AppFailure error) = _$_PagedStateError;

  AppFailure get error;
  @JsonKey(ignore: true)
  _$$_PagedStateErrorCopyWith<_$_PagedStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
