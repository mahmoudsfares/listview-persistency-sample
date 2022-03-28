import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {

  final String itemName;
  final int itemIndex;
  final Function onCheckStateChanged;
  final bool isItemChecked;

  const MyListItem(this.itemName, this.itemIndex, this.onCheckStateChanged, this.isItemChecked);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCheckStateChanged(itemIndex),
      child: Card(
        color: isItemChecked ? Colors.blue : Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(itemName),
            ),
          ],
        ),
      ),
    );
  }
}
