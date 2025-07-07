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

  ValueNotifier<List<int>> checkedItemsIndexes = ValueNotifier(List<int>.empty(growable: true));

  void changeCheckStatus(int index) {
    if (checkedItemsIndexes.value.contains(index)) {
      checkedItemsIndexes.value.remove(index);
    } else {
      checkedItemsIndexes.value.add(index);
    }
  }
}
