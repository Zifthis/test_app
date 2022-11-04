import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/feature/movie_details/domain/entities/belongs_to_collection.dart';
import 'package:test_app/feature/movie_details/domain/entities/genre.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/movie_details/domain/entities/production_company.dart';
import 'package:test_app/feature/movie_details/domain/entities/production_country.dart';
import 'package:test_app/feature/movie_details/domain/entities/spoken_language.dart';

part 'movie_details_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieDetailsResponse {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollectionResponse? belongsToCollection;
  final int? budget;
  final List<GenreResponse>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompanyResponse>? productionCompanies;
  final List<ProductionCountryResponse>? productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguageResponse>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  MovieDetailsResponse(
      {this.adult,
      this.backdropPath,
      this.belongsToCollection,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  factory MovieDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsResponseFromJson(json);

  MovieDetails toDomain() {
    return MovieDetails(
      adult: adult,
      backdropPath: posterPath,
      belongsToCollection: belongsToCollection?.toDomain(),
      budget: budget,
      genres: genres?.map((e) => e.toDomain()).toList(),
      homepage: homepage,
      id: id,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      productionCompanies:
          productionCompanies?.map((e) => e.toDomain()).toList(),
      productionCountries:
          productionCountries?.map((e) => e.toDomain()).toList(),
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      spokenLanguages: spokenLanguages?.map((e) => e.toDomain()).toList(),
      status: status,
      tagline: tagline,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BelongsToCollectionResponse {
  final int? id;
  final String? name;
  final String? posterPath;
  final String? backdropPath;

  BelongsToCollectionResponse({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  factory BelongsToCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionResponseFromJson(json);

  BelongsToCollection toDomain() {
    return BelongsToCollection(
      backdropPath: backdropPath,
      id: id,
      name: name,
      posterPath: posterPath,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GenreResponse {
  final int? id;
  final String? name;

  GenreResponse({
    this.id,
    this.name,
  });

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);

  Genre toDomain() {
    return Genre(
      id: id,
      name: name,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductionCompanyResponse {
  final int? id;
  final dynamic logoPath;
  final String? name;
  final String? originCountry;

  ProductionCompanyResponse({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyResponseFromJson(json);

  ProductionCompany toDomain() {
    return ProductionCompany(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductionCountryResponse {
  final String? iso31661;
  final String? name;

  ProductionCountryResponse({
    this.iso31661,
    this.name,
  });

  factory ProductionCountryResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryResponseFromJson(json);

  ProductionCountry toDomain() {
    return ProductionCountry(
      iso31661: iso31661,
      name: name,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SpokenLanguageResponse {
  final String? englishName;
  final String? iso6391;
  final String? name;

  SpokenLanguageResponse({
    this.englishName,
    this.iso6391,
    this.name,
  });

  factory SpokenLanguageResponse.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageResponseFromJson(json);

  SpokenLanguage toDomain() {
    return SpokenLanguage(
      englishName: englishName,
      iso6391: iso6391,
      name: name,
    );
  }
}
