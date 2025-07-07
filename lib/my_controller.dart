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

  ValueNotifier<int> checkedItemIndex = ValueNotifier(-1);

  void changeCheckStatus(int index) {
    checkedItemIndex.value = index;
  }
}
