import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_persistency_sample/list_item.dart';
import 'package:listview_persistency_sample/my_controller.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyController());

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: controller.things.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => MyListItem(
                        controller.things[index],
                        controller.things[index].id,
                        (index) => controller.changeCheckStatus(index),
                        controller.checkedItemsIndexes.value
                            .contains(controller.things[index].id),
                      ),
                    );
                  }),
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
