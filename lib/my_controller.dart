
import 'package:get/get.dart';

class MyController extends GetxController {

  List data = ['kite', 'keyboard', 'button', 'two', 'singer'];
  List<RxBool> itemsCheckStatus = [];

  void initalizeCheckStatus() {
    for(int i = 0; i < data.length; i++){
      itemsCheckStatus.add(false.obs);
    }
  }

  void changeCheckStatus(int index){
    itemsCheckStatus[index].value = !itemsCheckStatus[index].value;
  }
}