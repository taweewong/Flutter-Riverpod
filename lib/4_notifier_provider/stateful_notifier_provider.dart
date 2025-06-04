import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatefulNotifierProvider extends Notifier<List<String>> {
  // Initial state
  @override
  List<String> build() {
    return ["Red", "Blue", "Green", "Yellow", "Pink"];
  }

  void addItem(String item) {
    state = [...state, item];
  }
}

// Create notifier provider without generation
final itemNotifierProvider = NotifierProvider<StatefulNotifierProvider, List<String>>(() {
  return StatefulNotifierProvider();
});
