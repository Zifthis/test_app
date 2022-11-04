import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company.freezed.dart';

@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    int? id,
    dynamic logoPath,
    String? name,
    String? originCountry,
  }) = _ProductionCompany;
}
