import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {

  final String itemName;
  final int itemIndex;
  final Function onCheckStateChanged;
  final bool isItemChecked;

  const MyListItem(this.itemName, this.itemIndex, this.onCheckStateChanged, this.isItemChecked);

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
                IconButton(
                    onPressed: () {
                      onCheckStateChanged(itemIndex);
                    },
                    icon: _bindIconToCheckStatus())
              ],
            ),
          ),
        ],
      ),
    );
  }

  Icon _bindIconToCheckStatus() {
    if (isItemChecked)
      return Icon(Icons.check_box);
    else
      return Icon(Icons.check_box_outline_blank);
  }
}
