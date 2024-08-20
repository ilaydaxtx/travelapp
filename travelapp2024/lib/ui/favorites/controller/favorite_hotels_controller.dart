import 'dart:ffi';

import 'package:get/get.dart';

class FavoriteHotelsController extends GetxController {
  RxBool isFavoriteHotel = false.obs;

  void hotelToggleFavorite() {
    isFavoriteHotel.value = !isFavoriteHotel.value;
  }
}
