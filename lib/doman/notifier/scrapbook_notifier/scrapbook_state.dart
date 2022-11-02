import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/test_map_response.dart';

part 'scrapbook_state.freezed.dart';

@freezed
class ScrapbookState with _$ScrapbookState {
  const factory ScrapbookState.initial() = _ScrapbookStateInitial;
  const factory ScrapbookState.loading() = _ScrapbookStateLoading;
  const factory ScrapbookState.loaded(
    TestMapResponse testMapResponse,
  ) = _ScrapbookStateLoaded;
  const factory ScrapbookState.error(String error) = _ScrapbookStateError;
}
