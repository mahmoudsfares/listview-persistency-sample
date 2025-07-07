import 'package:flutter/material.dart';

class MyController {

  List itemsNames = [
    'kite',
    'keyboard',
    'button',
    'two',
    'singer',
    'burger',
    'rifle',
    'romania',
    'mother',
    'pocket knife',
    'matt damon',
    'cafe',
    'ball',
    'apostrophe',
    'hair',
    'led',
    'song',
    'sea',
    'self',
    'car',
    'iron',
    'voice',
    'thirty eight',
    'dress',
    'microphone',
    'network',
    'book',
    'finger',
    'tomatoes',
    'back',
    'bracket',
    'bread',
    'ant',
    'ceiling',
    'people',
    'thursday'
  ];

  ValueNotifier<List<int>> checkedItemsIndexes = ValueNotifier(List<int>.empty(growable: false));

  void changeCheckStatus(int index) {
    // copy of the already existing list so the value of the notifier can be changed and trigger the rebuild
    // mere addition or removal of an item will not change the list object, then the rebuild won't trigger
    final List<int> tempList = List.of(checkedItemsIndexes.value);
    if (tempList.contains(index)) {
      tempList.remove(index);
    } else {
      tempList.add(index);
    }
    checkedItemsIndexes.value = tempList;
  }
}
