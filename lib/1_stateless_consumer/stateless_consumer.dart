import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/1_stateless_consumer/stateless_consumer_provider.dart';

class StatelessConsumerPage extends ConsumerWidget {

  const StatelessConsumerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> itemList = ref.watch(itemProvider);
    String greenItem = ref.watch(greenItemProvider).first;

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

          if (item == greenItem) {
            decoration = BoxDecoration(
                color: Colors.green
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
