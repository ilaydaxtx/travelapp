import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/ui/favorites/view/favorites_view.dart';
import 'package:travelapp2024/ui/home/view/home_view.dart';
import 'package:travelapp2024/ui/main_menu/bottom_bar/model/bottom_bar_model.dart';
import 'package:travelapp2024/ui/home/widget/home_bottom_bar_widget.dart';
import 'package:travelapp2024/ui/profile/view/profile_view.dart';
import 'package:travelapp2024/ui/reservations/view/reservations_view.dart';

class MainMenuController extends GetxController {
  RxInt selectedIconIndex = 0.obs;
  var selectedPageIndex = 0.obs;

  void changePage(int index) {
    print(index);
    selectedPageIndex.value = index;
  }

  List<BottomBarIcon> bottomBarIcons = [
    BottomBarIcon(iconName: "Home", iconDestination: HomeBottomBarWidget()),
    BottomBarIcon(iconName: "Favorites", iconDestination: FavoritesView()),
    BottomBarIcon(iconName: "Reservations", iconDestination: ReservationsView()),
    BottomBarIcon(iconName: "Profile", iconDestination: ProfileView()),
  ];

  Widget mainMenuBody(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return FavoritesView();
      case 2:
        return ReservationsView();
      case 3:
        return ProfileView();

      default:
        return Container(
          height: Get.height * .2,
          width: Get.width * .2,
          color: Colors.red,
        );
    }
  }

  /* Future<Function?>? onTapBottomBarNavigator({required BottomBarIcon iconDestination}) async {
    selectedBottomBarIcon.value = iconDestination;
    Get.to(selectedBottomBarIcon.value!.iconDestination!);
    return null;
  } */
}
