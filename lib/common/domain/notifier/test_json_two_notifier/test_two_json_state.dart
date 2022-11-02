import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/data/models/test_json_two_response.dart';

part 'test_two_json_state.freezed.dart';

@freezed
class TestTwoJsonState with _$TestTwoJsonState {
  const factory TestTwoJsonState.initial() = _TestTwoJsonStateInitial;
  const factory TestTwoJsonState.loading() = _TestTwoJsonStateLoading;
  const factory TestTwoJsonState.loaded(
    TestJsonTwoResponse testJsonTwoResponse,
  ) = _TestTwoJsonStateLoaded;
  const factory TestTwoJsonState.error(String error) = _TestTwoJsonStateError;
}
