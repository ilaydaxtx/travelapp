import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/assets_const.dart';
import 'package:travelapp2024/ui/main_menu/bottom_bar/model/bottom_bar_model.dart';
import 'package:travelapp2024/ui/home/model/detail_model.dart';
import 'package:travelapp2024/ui/home/model/model_favorites_list.dart';
import 'package:travelapp2024/ui/home/view/home_detail_view.dart';
import 'package:travelapp2024/ui/home/view/home_view.dart';
import 'package:travelapp2024/ui/home/widget/home_bottom_bar_widget.dart';
import 'package:travelapp2024/ui/register/register_background.dart';

class HomeController extends GetxController {
  var selectedFavDest = Rxn<Destination>();
  var selectedBottomBarIcon = Rxn<BottomBarIcon>();

  @override
  void onInit() {
    getFav();
    getHotels();
    super.onInit();
  }

  getFav() {} //empty
  getHotels() {} //empty

  Future<Function()?>? onTapCardDetail({required Destination dest}) async {
    selectedFavDest.value = dest;

    Get.to(DetailView(
      homeController: this,
    ));
    return null;
  }

  var details = <Detail>[
    Detail(id: 1, imagePath: ImageAssetsConst.library, name: "Mercado 402", subText: "Jirón Garcilaso de la Vega"),
    Detail(id: 2, imagePath: ImageAssetsConst.fisher, name: "Paseo Colon", subText: "Jirón Garcilaso de la Vega"),
    Detail(id: 3, imagePath: ImageAssetsConst.barcelona, name: "Barce", subText: "Barcel sub tex"),
  ];
  void detailToggleFavorite(int index) {
    details[index].isFavorite.value = !details[index].isFavorite.value;
    update();
  }

  var destinations = <Destination>[
    Destination(
      id: 4,
      name: 'Barcelona',
      imagePath: ImageAssetsConst.barcelona,
      price: 198,
    ),
    Destination(
      id: 5,
      name: 'Rio',
      imagePath: ImageAssetsConst.rio,
      price: 200,
    ),
    Destination(
      id: 6,
      name: 'Venecia',
      imagePath: ImageAssetsConst.venecia,
      price: 129,
    ),
    Destination(
      id: 7,
      name: 'Cuzco',
      imagePath: ImageAssetsConst.cuzco,
      price: 98,
    ),
  ];

  void destinationToggleFavorite(int index) {
    destinations[index].isFavorite.value = !destinations[index].isFavorite.value;
    update();
  }

  var hotels = <Hotels>[
    Hotels(id: 8, name: "Hotel Barcelona", imagePath: ImageAssetsConst.hotel1, price: 200),
    Hotels(id: 9, name: "Hotel Varillas", imagePath: ImageAssetsConst.hotel2, price: 300),
    Hotels(id: 10, name: "Hotel Ankara", imagePath: ImageAssetsConst.hotel3, price: 400),
    Hotels(id: 11, name: "Hotel İzmir", imagePath: ImageAssetsConst.hotel4, price: 500),
  ];
  void hotelToggleFavorite(int index) {
    hotels[index].isFavorite.value = !hotels[index].isFavorite.value;
    update();
  }
}
