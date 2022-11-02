import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/feature/popular_movies/domain/entities/popular.dart';

part 'get_popular_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetPopularResponse {
  final int? page;
  final int? totalPages;
  final int? totalResults;
  final List<PopularResponse>? results;

  GetPopularResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory GetPopularResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPopularResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PopularResponse {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  DateTime? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  PopularResponse({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory PopularResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularResponseFromJson(json);

  Popular toDomain() => Popular(
        adult: adult,
        backdropPath: backdropPath,
        genreIds: genreIds,
        id: id,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
