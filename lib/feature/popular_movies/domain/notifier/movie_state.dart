import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _MovieStateInitial;
  const factory MovieState.loading() = _MovieStateLoading;
  const factory MovieState.loaded(
    MovieResponse movieResponse,
  ) = _MovieStateLoaded;
  const factory MovieState.error(AppFailure error) = _MovieStateError;
}
