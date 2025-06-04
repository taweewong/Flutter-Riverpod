import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/2_stateful_consumer/stateful_consumer_provider.dart';

class StatefulConsumerPage extends ConsumerStatefulWidget {
  const StatefulConsumerPage({super.key});

  @override
  ConsumerState<StatefulConsumerPage> createState() => _StatefulConsumerState();
}

class _StatefulConsumerState extends ConsumerState<StatefulConsumerPage> {
  @override
  Widget build(BuildContext context) {
    List<String> itemList = ref.watch(itemProvider);
    String redItem = ref.watch(redItemProvider).first;

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
                  color: Colors.red
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
