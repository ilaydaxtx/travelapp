import 'package:get/get.dart';

class Detail {
  int id;
  String name;
  String subText;
  String imagePath;
  RxBool isFavorite = false.obs;

  Detail({required this.id, required this.imagePath, required this.name, required this.subText});
}
