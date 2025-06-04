import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stateful_notifier_use_generated_provider.g.dart';

@riverpod
class StatefulNotifier extends _$StatefulNotifier {
  // Initial state
  @override
  List<String> build() {
    return ["Red", "Blue", "Green", "Yellow", "Pink"];
  }

  void addItem(String item) {
    state = [...state, item];
  }
}

// Riverpod will generate this
// final itemNotifierProvider = NotifierProvider<StatefulNotifier, List<String>>(() {
//   return StatefulNotifier();
// });
