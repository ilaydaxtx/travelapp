import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/favorites/controller/favorite_destinations_controller.dart';
import 'package:travelapp2024/ui/favorites/controller/favorite_hotels_controller.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/utils/image_utils.dart';

class HomeHotelsWidget extends StatelessWidget {
  HomeHotelsWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;
  final FavoriteHotelsController favoriteHotelsController = Get.put(FavoriteHotelsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width * 0.9,
          child: const Text(
            "Highest rated Hotels near you",
            style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "AvertaPE", fontSize: 20, color: AppColors.PrimaryBlack),
          ),
        ),
        Align(
          /* alignment: Alignment.topCenter, */
          child: Container(
            width: Get.width * 0.9,
            height: Get.height * 0.2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: homeController.hotels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: Get.width * 0.02),
                    child: Stack(
                      children: [
                        Container(
                          width: Get.width * 0.5,
                          height: Get.height * 0.5,
                          child: homeController.hotels[index].imagePath == null
                              ? Image.network(
                                  "https://media.istockphoto.com/id/1409329028/tr/vekt%C3%B6r/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=DoUsTCubI4BWxm_piyvsAB7I10pJlPTEmtb5Pc5O-TE=",
                                  height: Get.height * 0.2,
                                  width: Get.width * 0.5,
                                )
                              : ImageUtils().imageAsset(height: Get.height * 0.2, width: Get.width * 0.5, imagePath: homeController.hotels[index].imagePath!),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: Get.width * 0.5,
                          height: Get.height * 0.2,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(Get.width * 0.02, 0, 0, Get.height * 0.035),
                            child: Text(
                              homeController.hotels[index].name,
                              style: TextStyle(color: AppColors.whiteColor, fontFamily: "AvertaPE", fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: Get.width * 0.5,
                          height: Get.height * 0.2,
                          padding: EdgeInsets.fromLTRB(Get.width * 0.010, 0, 0, Get.height * 0.06),
                          child: Text(
                            " \$${homeController.hotels[index].price}",
                            style: TextStyle(color: AppColors.amberColor, fontFamily: "AvertaPE", fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: Get.width * 0.5,
                          height: Get.height * 0.2,
                          padding: EdgeInsets.fromLTRB(Get.width * 0.02, 0, 0, Get.height * 0.085),
                          child: Text(
                            "Hotels",
                            style: TextStyle(color: AppColors.whiteColor, fontFamily: "AvertaPE", fontWeight: FontWeight.w700, fontSize: 12),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          height: Get.height * 0.04,
                          width: Get.width * 0.5,
                          child: Obx(
                            () => IconButton(
                              onPressed: favoriteHotelsController.hotelToggleFavorite,
                              icon: favoriteHotelsController.isFavoriteHotel.value
                                  ? Icon(
                                      Icons.favorite,
                                      color: AppColors.BrightPurple,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: AppColors.PrimaryBlack,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
