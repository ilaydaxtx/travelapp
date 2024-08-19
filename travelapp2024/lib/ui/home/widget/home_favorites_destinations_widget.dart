import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/home/widget/home_card_widget.dart';

class HomeFavoritesDestinationsWidget extends StatelessWidget {
  const HomeFavoritesDestinationsWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width * 0.9,
          height: Get.height * 0.05,
          child: const Text(
            "Favourite Destinations",
            style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "AvertaPE", fontSize: 20, color: AppColors.PrimaryBlack),
          ),
        ),
        Align(
          child: Container(
            width: Get.width * 0.9,
            height: Get.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: homeController.destinations.length,
              itemBuilder: (context, index) {
                return HomeCardWidget(homeController: homeController, index: index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
