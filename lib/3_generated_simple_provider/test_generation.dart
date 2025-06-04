import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/3_generated_simple_provider/test_generation_provider.dart';

class TestGeneratedConsumerPage extends ConsumerStatefulWidget {
  const TestGeneratedConsumerPage({super.key});

  @override
  ConsumerState<TestGeneratedConsumerPage> createState() => _TestGeneratedConsumerState();
}

class _TestGeneratedConsumerState extends ConsumerState<TestGeneratedConsumerPage> {
  @override
  Widget build(BuildContext context) {
    List<String> itemList = ref.watch(itemGeneratedProvider);
    String redItem = ref.watch(pinkItemGeneratedProvider).first;

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Consumer Widget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            String item = itemList[index];
            BoxDecoration? decoration;

            if (item == redItem) {
              decoration = BoxDecoration(
                  color: Colors.pinkAccent
              );
            }

            return Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: decoration,
              child: Text(
                itemList[index],
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }
      ),
    );
  }
}
