import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_generation_provider.g.dart';

const itemList = [
  "Red",
  "Blue",
  "Green",
  "Yellow",
  "Pink",
];

// Create generated provider
@riverpod
List<String> itemGenerated(ref) {
  return itemList;
}

@riverpod
List<String> pinkItemGenerated(ref) {
  return itemList.where((p) => p.contains("Pink")).toList();
}
