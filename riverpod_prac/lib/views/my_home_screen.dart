import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/utils/strem_provider_practice.dart';

class MyHomeScreen extends ConsumerStatefulWidget {
  const MyHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends ConsumerState<MyHomeScreen> {

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {

    var numValue = ref.watch(numStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: numValue.when(
          data: (data){
            return Text(
              '$data',
              style: const TextStyle(fontSize: 24),
              );
          }, 
          error: (error, stackTrace){
            return Text(
              '$error',
              style: const TextStyle(color: Colors.red, fontSize: 18),
            );
          }, 
          loading: () => const CircularProgressIndicator()
          ),
      ),
      
    );
  }
}