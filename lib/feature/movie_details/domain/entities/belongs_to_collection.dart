import 'package:freezed_annotation/freezed_annotation.dart';

part 'belongs_to_collection.freezed.dart';

@freezed
class BelongsToCollection with _$BelongsToCollection {
  const factory BelongsToCollection({
    int? id,
    String? name,
    String? posterPath,
    String? backdropPath,
  }) = _BelongsToCollection;
}
