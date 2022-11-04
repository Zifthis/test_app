import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_country.freezed.dart';

@freezed
class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    String? iso31661,
    String? name,
  }) = _ProductionCountry;
}
