import 'package:get/get.dart';

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

  RxInt checkedItemIndex = (-1).obs;

  void changeCheckStatus(int index) {
    checkedItemIndex.value = index;
  }
}
