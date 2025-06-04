import 'package:flutter_riverpod/flutter_riverpod.dart';

const itemList = [
  "Red",
  "Blue",
  "Green",
  "Yellow",
  "Pink",
];

// Create provider without generation
final itemProvider = Provider((ref) {
  return itemList;
});

final redItemProvider = Provider((ref) {
  return itemList.where((p) => p.contains("Red")).toList();
});
