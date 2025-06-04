import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/2_stateful_consumer/stateful_consumer_provider.dart';
import 'package:flutter_riverpod_learning/4_notifier_provider/stateful_notifier_provider.dart';

class StatefulNotifierPage extends ConsumerStatefulWidget {
  String inputText = "";

  StatefulNotifierPage(this.inputText);

  @override
  ConsumerState<StatefulNotifierPage> createState() => _StatefulNotifierState();
}

class _StatefulNotifierState extends ConsumerState<StatefulNotifierPage> {
  @override
  Widget build(BuildContext context) {

    List<String> itemList = ref.watch(itemNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Consumer Widget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  String item = itemList[index];

                  return Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      item,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      widget.inputText = text;
                    },
                  ),
                ),
                TextButton(
                    onPressed: () {
                      ref.read(itemNotifierProvider.notifier).addItem(widget.inputText);
                    },
                    child: Text("Add")
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
