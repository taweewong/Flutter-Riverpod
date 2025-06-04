import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learning/5_generated_notifier_provider/stateful_notifier_use_generated_provider.dart';
import 'package:flutter_riverpod_learning/6_dependent_provider/denpendent_provider.dart';

class DependentPage extends ConsumerStatefulWidget {
  String inputText = "";

  DependentPage(this.inputText);

  @override
  ConsumerState<DependentPage> createState() => _DependentState();
}

class _DependentState extends ConsumerState<DependentPage> {
  @override
  Widget build(BuildContext context) {

    List<String> itemList = ref.watch(dependentNotifierProvider);
    int total = ref.watch(totalItemCountProvider);

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
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(total.toString()),
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      widget.inputText = text;
                    },
                  ),
                ),
                TextButton(
                    onPressed: () {
                      ref.read(dependentNotifierProvider.notifier).addItem(widget.inputText);
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
