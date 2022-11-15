import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

part 'paged_state.freezed.dart';

@freezed
class PagedState with _$PagedState {
  const factory PagedState.initial() = _PagedStateInitial;
  const factory PagedState.loading() = _PagedStateLoading;
  const factory PagedState.loaded(
    MovieResponse movieResponse,
  ) = _PagedStateLoaded;
  const factory PagedState.pagingController(
    PagingController<int, Result> pagingController,
  ) = _PagedStatePagingController;
  const factory PagedState.error(AppFailure error) = _PagedStateError;
}
