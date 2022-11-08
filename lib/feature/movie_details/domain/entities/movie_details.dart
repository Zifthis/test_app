import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/feature/movie_details/domain/entities/belongs_to_collection.dart';
import 'package:test_app/feature/movie_details/domain/entities/genre.dart';
import 'package:test_app/feature/movie_details/domain/entities/production_company.dart';
import 'package:test_app/feature/movie_details/domain/entities/production_country.dart';
import 'package:test_app/feature/movie_details/domain/entities/spoken_language.dart';

part 'movie_details.freezed.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    final bool? adult,
    final String? backdropPath,
    final BelongsToCollection? belongsToCollection,
    final int? budget,
    final List<Genre>? genres,
    final String? homepage,
    final int? id,
    final String? imdbId,
    final String? originalLanguage,
    final String? originalTitle,
    final String? overview,
    final double? popularity,
    final String? posterPath,
    final List<ProductionCompany>? productionCompanies,
    final List<ProductionCountry>? productionCountries,
    final String? releaseDate,
    final int? revenue,
    final int? runtime,
    final List<SpokenLanguage>? spokenLanguages,
    final String? status,
    final String? tagline,
    final String? title,
    final bool? video,
    final double? voteAverage,
    final int? voteCount,
  }) = _MovieDetails;

  factory MovieDetails.empty() => const MovieDetails(
        adult: null,
        backdropPath: null,
        belongsToCollection: null,
        budget: null,
        genres: null,
        homepage: null,
        id: null,
        imdbId: null,
        originalLanguage: null,
        originalTitle: null,
        overview: null,
        popularity: null,
        posterPath: null,
        productionCompanies: null,
        productionCountries: null,
        releaseDate: null,
        revenue: null,
        runtime: null,
        spokenLanguages: null,
        status: null,
        tagline: null,
        title: null,
        video: null,
        voteAverage: null,
        voteCount: null,
      );
}
