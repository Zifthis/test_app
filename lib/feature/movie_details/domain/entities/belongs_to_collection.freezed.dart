// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'belongs_to_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BelongsToCollection {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BelongsToCollectionCopyWith<BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BelongsToCollectionCopyWith<$Res> {
  factory $BelongsToCollectionCopyWith(
          BelongsToCollection value, $Res Function(BelongsToCollection) then) =
      _$BelongsToCollectionCopyWithImpl<$Res, BelongsToCollection>;
  @useResult
  $Res call({int? id, String? name, String? posterPath, String? backdropPath});
}

/// @nodoc
class _$BelongsToCollectionCopyWithImpl<$Res, $Val extends BelongsToCollection>
    implements $BelongsToCollectionCopyWith<$Res> {
  _$BelongsToCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BelongsToCollectionCopyWith<$Res>
    implements $BelongsToCollectionCopyWith<$Res> {
  factory _$$_BelongsToCollectionCopyWith(_$_BelongsToCollection value,
          $Res Function(_$_BelongsToCollection) then) =
      __$$_BelongsToCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? posterPath, String? backdropPath});
}

/// @nodoc
class __$$_BelongsToCollectionCopyWithImpl<$Res>
    extends _$BelongsToCollectionCopyWithImpl<$Res, _$_BelongsToCollection>
    implements _$$_BelongsToCollectionCopyWith<$Res> {
  __$$_BelongsToCollectionCopyWithImpl(_$_BelongsToCollection _value,
      $Res Function(_$_BelongsToCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_$_BelongsToCollection(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BelongsToCollection implements _BelongsToCollection {
  const _$_BelongsToCollection(
      {this.id, this.name, this.posterPath, this.backdropPath});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? posterPath;
  @override
  final String? backdropPath;

  @override
  String toString() {
    return 'BelongsToCollection(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BelongsToCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      __$$_BelongsToCollectionCopyWithImpl<_$_BelongsToCollection>(
          this, _$identity);
}

abstract class _BelongsToCollection implements BelongsToCollection {
  const factory _BelongsToCollection(
      {final int? id,
      final String? name,
      final String? posterPath,
      final String? backdropPath}) = _$_BelongsToCollection;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get posterPath;
  @override
  String? get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
