import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_prac/utils/state_notifier_provider_practice.dart';


class MyHomeScreen extends ConsumerStatefulWidget {
  const MyHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends ConsumerState<MyHomeScreen> {

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {

    int count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child){
          count = ref.watch(counterProvider);
          return Text(
            '$count',
            style: const TextStyle(
              fontSize: 25
            ),
            );
          }
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          ref.read(counterProvider.notifier).incrementValue();
        }
        ),
      
    );
  }
}