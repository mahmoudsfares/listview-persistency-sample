import 'package:flutter/material.dart';
import 'package:listview_persistency_sample/list_item.dart';
import 'package:listview_persistency_sample/my_controller.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyController controller = MyController();

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.things.length,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder(
                    valueListenable: controller.checkedItemsIndexes,
                    builder: (BuildContext context, value, Widget? child) => MyListItem(
                      controller.things[index],
                      controller.things[index].id,
                      (index) => controller.changeCheckStatus(index),
                      controller.checkedItemsIndexes.value.contains(controller.things[index].id),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(controller.checkedItemsIndexes.value);
                },
                child: const Text("print selected indexes"))
          ],
        ),
      ),
    );
  }
}
