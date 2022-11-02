import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/data/models/test_json_response.dart';

part 'test_json_state.freezed.dart';

@freezed
class TestJsonState with _$TestJsonState {
  const factory TestJsonState.initial() = _TestJsonStateInitial;
  const factory TestJsonState.loading() = _TestJsonStateLoading;
  const factory TestJsonState.loaded(
    TestJsonResponse testJsonResponse,
  ) = _TestJsonStateLoaded;
  const factory TestJsonState.error(String error) = _TestJsonStateError;
}
