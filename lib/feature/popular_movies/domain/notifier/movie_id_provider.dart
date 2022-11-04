import 'package:flutter_riverpod/flutter_riverpod.dart';

final getMovieIdProvider = StateProvider.autoDispose<String>((ref) => '');
