// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cake_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CakeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CakeJsonResponse cakeJsonResponse) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CakeStateInitial value) initial,
    required TResult Function(_CakeStateLoading value) loading,
    required TResult Function(_CakeStateLoaded value) loaded,
    required TResult Function(_CakeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CakeStateInitial value)? initial,
    TResult? Function(_CakeStateLoading value)? loading,
    TResult? Function(_CakeStateLoaded value)? loaded,
    TResult? Function(_CakeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CakeStateInitial value)? initial,
    TResult Function(_CakeStateLoading value)? loading,
    TResult Function(_CakeStateLoaded value)? loaded,
    TResult Function(_CakeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakeStateCopyWith<$Res> {
  factory $CakeStateCopyWith(CakeState value, $Res Function(CakeState) then) =
      _$CakeStateCopyWithImpl<$Res, CakeState>;
}

/// @nodoc
class _$CakeStateCopyWithImpl<$Res, $Val extends CakeState>
    implements $CakeStateCopyWith<$Res> {
  _$CakeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CakeStateInitialCopyWith<$Res> {
  factory _$$_CakeStateInitialCopyWith(
          _$_CakeStateInitial value, $Res Function(_$_CakeStateInitial) then) =
      __$$_CakeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CakeStateInitialCopyWithImpl<$Res>
    extends _$CakeStateCopyWithImpl<$Res, _$_CakeStateInitial>
    implements _$$_CakeStateInitialCopyWith<$Res> {
  __$$_CakeStateInitialCopyWithImpl(
      _$_CakeStateInitial _value, $Res Function(_$_CakeStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CakeStateInitial implements _CakeStateInitial {
  const _$_CakeStateInitial();

  @override
  String toString() {
    return 'CakeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CakeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CakeJsonResponse cakeJsonResponse) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_CakeStateInitial value) initial,
    required TResult Function(_CakeStateLoading value) loading,
    required TResult Function(_CakeStateLoaded value) loaded,
    required TResult Function(_CakeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CakeStateInitial value)? initial,
    TResult? Function(_CakeStateLoading value)? loading,
    TResult? Function(_CakeStateLoaded value)? loaded,
    TResult? Function(_CakeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CakeStateInitial value)? initial,
    TResult Function(_CakeStateLoading value)? loading,
    TResult Function(_CakeStateLoaded value)? loaded,
    TResult Function(_CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CakeStateInitial implements CakeState {
  const factory _CakeStateInitial() = _$_CakeStateInitial;
}

/// @nodoc
abstract class _$$_CakeStateLoadingCopyWith<$Res> {
  factory _$$_CakeStateLoadingCopyWith(
          _$_CakeStateLoading value, $Res Function(_$_CakeStateLoading) then) =
      __$$_CakeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CakeStateLoadingCopyWithImpl<$Res>
    extends _$CakeStateCopyWithImpl<$Res, _$_CakeStateLoading>
    implements _$$_CakeStateLoadingCopyWith<$Res> {
  __$$_CakeStateLoadingCopyWithImpl(
      _$_CakeStateLoading _value, $Res Function(_$_CakeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CakeStateLoading implements _CakeStateLoading {
  const _$_CakeStateLoading();

  @override
  String toString() {
    return 'CakeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CakeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CakeJsonResponse cakeJsonResponse) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_CakeStateInitial value) initial,
    required TResult Function(_CakeStateLoading value) loading,
    required TResult Function(_CakeStateLoaded value) loaded,
    required TResult Function(_CakeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CakeStateInitial value)? initial,
    TResult? Function(_CakeStateLoading value)? loading,
    TResult? Function(_CakeStateLoaded value)? loaded,
    TResult? Function(_CakeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CakeStateInitial value)? initial,
    TResult Function(_CakeStateLoading value)? loading,
    TResult Function(_CakeStateLoaded value)? loaded,
    TResult Function(_CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CakeStateLoading implements CakeState {
  const factory _CakeStateLoading() = _$_CakeStateLoading;
}

/// @nodoc
abstract class _$$_CakeStateLoadedCopyWith<$Res> {
  factory _$$_CakeStateLoadedCopyWith(
          _$_CakeStateLoaded value, $Res Function(_$_CakeStateLoaded) then) =
      __$$_CakeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({CakeJsonResponse cakeJsonResponse});
}

/// @nodoc
class __$$_CakeStateLoadedCopyWithImpl<$Res>
    extends _$CakeStateCopyWithImpl<$Res, _$_CakeStateLoaded>
    implements _$$_CakeStateLoadedCopyWith<$Res> {
  __$$_CakeStateLoadedCopyWithImpl(
      _$_CakeStateLoaded _value, $Res Function(_$_CakeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cakeJsonResponse = null,
  }) {
    return _then(_$_CakeStateLoaded(
      null == cakeJsonResponse
          ? _value.cakeJsonResponse
          : cakeJsonResponse // ignore: cast_nullable_to_non_nullable
              as CakeJsonResponse,
    ));
  }
}

/// @nodoc

class _$_CakeStateLoaded implements _CakeStateLoaded {
  const _$_CakeStateLoaded(this.cakeJsonResponse);

  @override
  final CakeJsonResponse cakeJsonResponse;

  @override
  String toString() {
    return 'CakeState.loaded(cakeJsonResponse: $cakeJsonResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CakeStateLoaded &&
            (identical(other.cakeJsonResponse, cakeJsonResponse) ||
                other.cakeJsonResponse == cakeJsonResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cakeJsonResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CakeStateLoadedCopyWith<_$_CakeStateLoaded> get copyWith =>
      __$$_CakeStateLoadedCopyWithImpl<_$_CakeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CakeJsonResponse cakeJsonResponse) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(cakeJsonResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(cakeJsonResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cakeJsonResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CakeStateInitial value) initial,
    required TResult Function(_CakeStateLoading value) loading,
    required TResult Function(_CakeStateLoaded value) loaded,
    required TResult Function(_CakeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CakeStateInitial value)? initial,
    TResult? Function(_CakeStateLoading value)? loading,
    TResult? Function(_CakeStateLoaded value)? loaded,
    TResult? Function(_CakeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CakeStateInitial value)? initial,
    TResult Function(_CakeStateLoading value)? loading,
    TResult Function(_CakeStateLoaded value)? loaded,
    TResult Function(_CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CakeStateLoaded implements CakeState {
  const factory _CakeStateLoaded(final CakeJsonResponse cakeJsonResponse) =
      _$_CakeStateLoaded;

  CakeJsonResponse get cakeJsonResponse;
  @JsonKey(ignore: true)
  _$$_CakeStateLoadedCopyWith<_$_CakeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CakeStateErrorCopyWith<$Res> {
  factory _$$_CakeStateErrorCopyWith(
          _$_CakeStateError value, $Res Function(_$_CakeStateError) then) =
      __$$_CakeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_CakeStateErrorCopyWithImpl<$Res>
    extends _$CakeStateCopyWithImpl<$Res, _$_CakeStateError>
    implements _$$_CakeStateErrorCopyWith<$Res> {
  __$$_CakeStateErrorCopyWithImpl(
      _$_CakeStateError _value, $Res Function(_$_CakeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_CakeStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CakeStateError implements _CakeStateError {
  const _$_CakeStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CakeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CakeStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CakeStateErrorCopyWith<_$_CakeStateError> get copyWith =>
      __$$_CakeStateErrorCopyWithImpl<_$_CakeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CakeJsonResponse cakeJsonResponse) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CakeJsonResponse cakeJsonResponse)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_CakeStateInitial value) initial,
    required TResult Function(_CakeStateLoading value) loading,
    required TResult Function(_CakeStateLoaded value) loaded,
    required TResult Function(_CakeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CakeStateInitial value)? initial,
    TResult? Function(_CakeStateLoading value)? loading,
    TResult? Function(_CakeStateLoaded value)? loaded,
    TResult? Function(_CakeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CakeStateInitial value)? initial,
    TResult Function(_CakeStateLoading value)? loading,
    TResult Function(_CakeStateLoaded value)? loaded,
    TResult Function(_CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CakeStateError implements CakeState {
  const factory _CakeStateError(final String error) = _$_CakeStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_CakeStateErrorCopyWith<_$_CakeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
