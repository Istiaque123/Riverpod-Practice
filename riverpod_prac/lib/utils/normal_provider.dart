import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetingsProvider = Provider<String>((ref) {
  return "Good Evening, How are you";
});