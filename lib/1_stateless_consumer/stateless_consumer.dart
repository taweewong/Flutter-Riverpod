import 'package:flutter/material.dart';

class StatelessConsumerPage extends StatelessWidget {

  const StatelessConsumerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var itemList = ["a", "b", "c"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Consumer Widget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
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
