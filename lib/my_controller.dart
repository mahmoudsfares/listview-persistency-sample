import 'package:flutter/material.dart';
import 'package:listview_persistency_sample/thing.dart';

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

  List<Thing> things = [
    Thing(24, 'bracket'),
    Thing(103, 'ceiling'),
    Thing(-1, 'people'),
    Thing(7, 'thursday'),
    Thing(130, 'back'),
    Thing(10, 'bread'),
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
