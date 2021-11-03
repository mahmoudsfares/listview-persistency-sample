import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyListItem extends StatelessWidget {

  String itemName;
  int itemIndex;
  Function onItemChecked;
  RxBool itemCheckStatus;

  MyListItem(this.itemName, this.itemIndex, this.onItemChecked, this.itemCheckStatus);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text(itemName),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){
                  onItemChecked(itemIndex);
                }, icon: Obx(() {
                  if(itemCheckStatus.value)
                    return Icon(Icons.check_box);
                  else
                    return Icon(Icons.check_box_outline_blank);
                }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
