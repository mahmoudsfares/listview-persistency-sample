import 'package:get/get.dart';
import 'package:listview_persistency_sample/thing.dart';

class MyController extends GetxController {

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

  RxList<int> checkedItemsIndexes = (List<int>.empty(growable: true)).obs;

  void changeCheckStatus(int index) {
    if (checkedItemsIndexes.contains(index))
      checkedItemsIndexes.remove(index);
    else
      checkedItemsIndexes.add(index);
  }
}
