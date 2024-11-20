import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/common/weather.dart';

final weatherFutureProvider = FutureProvider<String>((ref) async {
  return fetchWeatherReport();
});