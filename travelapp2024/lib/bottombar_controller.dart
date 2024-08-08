import 'package:get/get.dart';

class BottombarController extends GetxController {
  
  RxInt item = 0.obs;
  void onTapItem(int selectedIndex) {
    item.value = selectedIndex;
    update(); 
  }
}
