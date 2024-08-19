import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/main_menu/controller/main_menu_controller.dart';

class MainMenuView extends StatelessWidget {
  // final homeController = Get.find<HomeController>();

  MainMenuView({super.key});
  MainMenuController mainMenuController = Get.put(MainMenuController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.Grey,
          toolbarHeight: Get.height * 0.04,
          foregroundColor: AppColors.whiteColor,
        ),
        body: mainMenuController.mainMenuBody(mainMenuController.selectedPageIndex.value),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: mainMenuController.selectedPageIndex.value,
          onTap: (index) {
            mainMenuController.changePage(index);
            print(index);
          },
          selectedItemColor: AppColors.BrightPurple,
          unselectedItemColor: AppColors.blackColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.content_paste), label: 'Content'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
