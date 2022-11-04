import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';

part 'movie_details_state.freezed.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _MovieDetailsStateInitial;
  const factory MovieDetailsState.loading() = _MovieDetailsStateLoading;
  const factory MovieDetailsState.loaded(
    MovieDetails movieDetails,
  ) = _MovieDetailsStateLoaded;
  const factory MovieDetailsState.error(String error) = _MovieDetailsStateError;
}
