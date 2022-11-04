import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_language.freezed.dart';

@freezed
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    String? englishName,
    String? iso6391,
    String? name,
  }) = _SpokenLanguage;
}
