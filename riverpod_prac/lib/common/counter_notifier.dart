import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(): super(0);
  
  void incrementValue(){
    // state = state +1;
    state++;
  }
}