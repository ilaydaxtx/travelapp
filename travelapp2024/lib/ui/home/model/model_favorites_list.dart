import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class Destination {
  int id;
  String name;
  RxBool isFavorite = false.obs;
  String? imagePath;
  double? price;

  Destination({required this.id, required this.name, this.imagePath, this.price});
}

class Hotels {
  int id;
  String name;
  RxBool isFavorite = false.obs;
  String? imagePath;
  double? price;

  Hotels({
    required this.id,
    required this.name,
    this.imagePath,
    this.price,
  });
}
