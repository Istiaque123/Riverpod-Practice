import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/common/counter_notifier.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});