import 'package:get/get.dart';

class FavoriteDestinationsController extends GetxController {
  RxBool isFavoriteDestination = false.obs;
  void favoriteToggler() {
    isFavoriteDestination.value = !isFavoriteDestination.value;
  }
}
