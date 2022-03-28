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
        body: ListView.builder(
          itemCount: controller.itemsNames.length,
          itemBuilder: (context, index) {
            return Obx(
              () => MyListItem(
                controller.itemsNames[index],
                index,
                (index) => controller.changeCheckStatus(index),
                controller.checkedItemIndex.value == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
