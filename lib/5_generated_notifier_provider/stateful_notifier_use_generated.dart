import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/5_generated_notifier_provider/stateful_notifier_use_generated_provider.dart';

class StatefulNotifierUseGeneratedPage extends ConsumerStatefulWidget {
  String inputText = "";

  StatefulNotifierUseGeneratedPage(this.inputText);

  @override
  ConsumerState<StatefulNotifierUseGeneratedPage> createState() => _StatefulNotifierUseGeneratedState();
}

class _StatefulNotifierUseGeneratedState extends ConsumerState<StatefulNotifierUseGeneratedPage> {
  @override
  Widget build(BuildContext context) {

    List<String> itemList = ref.watch(statefulNotifierProvider);

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
                      ref.read(statefulNotifierProvider.notifier).addItem(widget.inputText);
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
