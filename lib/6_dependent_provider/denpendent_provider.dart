import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'denpendent_provider.g.dart';

@riverpod
class DependentNotifier extends _$DependentNotifier {
  // Initial state
  @override
  List<String> build() {
    return ["Red", "Blue", "Green", "Yellow", "Pink"];
  }

  void addItem(String item) {
    state = [...state, item];
  }
}

@riverpod
int totalItemCount(Ref ref) {
  List<String> itemList = ref.watch(dependentNotifierProvider);
  return itemList.length;
}
