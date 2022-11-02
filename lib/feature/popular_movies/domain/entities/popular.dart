import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular.freezed.dart';

@freezed
class Popular with _$Popular {
  const factory Popular({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _Popular;
}
