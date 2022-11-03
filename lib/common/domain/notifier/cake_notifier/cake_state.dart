import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/common/data/models/cake_json_response.dart';

part 'cake_state.freezed.dart';

@freezed
class CakeState with _$CakeState {
  const factory CakeState.initial() = _CakeStateInitial;
  const factory CakeState.loading() = _CakeStateLoading;
  const factory CakeState.loaded(
    CakeJsonResponse cakeJsonResponse,
  ) = _CakeStateLoaded;
  const factory CakeState.error(String error) = _CakeStateError;
}
