import 'package:get/get.dart';
import 'package:travelapp2024/ui/home/model/model_favorites_list.dart';

class DestinationController extends GetxController {
  var destinations = <Destination>[
    Destination(name: 'Barcelona'),
    Destination(name: 'Rio'),
    Destination(name: 'Tokyo'),
    Destination(name: 'London'),
  ].obs;

  void toggleFavorite(int index) {
    destinations[index].isFavorite = !destinations[index].isFavorite;
    update();
  }
}

class HotelsController extends GetxController{
  var hotels = <Hotels>[
    Hotels(name: "Hotel Barcelona"),
    Hotels(name: "Hotel Varillas"),
  ].obs;
}
