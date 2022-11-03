import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/feature/popular_movies/data/models/get_popular_response.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _MovieStateInitial;
  const factory MovieState.loading() = _MovieStateLoading;
  const factory MovieState.loaded(
    GetPopularResponse getPopularResponse,
  ) = _MovieStateLoaded;
  const factory MovieState.error(String error) = _MovieStateError;
}
