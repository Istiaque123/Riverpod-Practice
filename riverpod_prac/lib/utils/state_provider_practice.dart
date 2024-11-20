import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterValueProvider = StateProvider<int>((ref) {
  return 0;
});