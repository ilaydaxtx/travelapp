import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:travelapp2024/const/appbar/appbar_view.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/const/styles/gradients.dart';

void main() {
  runApp(MyApp());
}

/* class Controller extends GetxController {
  RxInt index = 0.obs;

  void onItemTapped(int selectedIndex) {
    index.value = selectedIndex;
  }
} */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* Controller controller = Get.find<Controller>(); */
    return Scaffold(
      appBar: AppbarView.appBarView(),
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          gradient: Gradients.gradientColor,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(children: [
            Container(
              width: Get.width,
              height: Get.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sky.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                //TODO dhchdb??
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: Get.width * 0.9,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/search.png",
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Text(
                        "Where are you traveling to?",
                        style: TextStyle(fontFamily: "AvertaPE", fontWeight: FontWeight.w600, color: AppColors.PrimaryBlack, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width * 0.9,
              height: Get.height * 0.05,
              child: Text(
                "Favourite Destinations",
                style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "AvertaPE", fontSize: 20, color: AppColors.PrimaryBlack),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: Get.width * 0.9,
                height: Get.height * 0.2, //TODO: add icons + resize the height
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      height: Get.height * 0.2,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/barcelona.png")), borderRadius: BorderRadius.circular(4)),
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      width: Get.width * 0.5,
                      height: Get.height * 0.4,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/barcelona.png")), borderRadius: BorderRadius.circular(4)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Get.width * 0.9,
              child: Text(
                "Highest rated Hotels near you",
                style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "AvertaPE", fontSize: 20, color: AppColors.PrimaryBlack),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: Get.width * 0.9,
                height: Get.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      height: Get.height * 0.6,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/barcelona.png")), borderRadius: BorderRadius.circular(4)),
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      width: Get.width * 0.5,
                      height: Get.height * 0.6,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/barcelona.png")), borderRadius: BorderRadius.circular(4)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  width: Get.width,
                  height: Get.height * 0.15,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/berlin.png",
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: Get.height,
                        child: Image.asset(
                          "assets/Clouds.png",
                        ),
                      ),
                      Container(
                        width: Get.width * 0.4,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Clouds.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Image.asset("assets/headphone.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/home.png"),
                color: AppColors.BrightPurple,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/heart.png"),
                color: AppColors.BrightPurple,
              ),
              label: "Favourites"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/clipboard.png"),
                color: AppColors.BrightPurple,
              ),
              label: "Reservations"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/person.png"),
                color: AppColors.BrightPurple,
              ),
              label: "Profile"),
        ],
        unselectedLabelStyle: TextStyle(color: AppColors.PrimaryBlack),
        selectedLabelStyle: TextStyle(color: AppColors.BrightPurple),
        unselectedItemColor: AppColors.PrimaryBlack,
        /* currentIndex: controller.index.value,
          onTap: controller.onItemTapped, */
      ),
    );
  }
}
