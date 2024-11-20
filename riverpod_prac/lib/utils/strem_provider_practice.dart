import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/common/data_strem.dart';

final numStreamProvider = StreamProvider<int>((ref) {
  return fetchNumbersStreamData();
});