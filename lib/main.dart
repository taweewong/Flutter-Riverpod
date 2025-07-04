import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '1_stateless_consumer/stateless_consumer.dart';
import '2_stateful_consumer/stateful_consumer.dart';
import '3_generated_simple_provider/test_generation.dart';
import '4_notifier_provider/stateful_notifier.dart';
import '5_generated_notifier_provider/stateful_notifier_use_generated.dart';
import '6_dependent_provider/dependent.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const StatelessConsumerPage(),
      // home: const StatefulConsumerPage(),
      // home: const TestGeneratedConsumerPage(),
      // home: StatefulNotifierPage(""),
      // home: StatefulNotifierUseGeneratedPage(""),
      home: DependentPage(""),
    );
  }
}
