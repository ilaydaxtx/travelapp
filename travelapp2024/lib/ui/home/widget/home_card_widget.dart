import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/favorites/widget/favorites_list_widget.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/favorites/controller/favorite_destinations_controller.dart';
import 'package:travelapp2024/utils/image_utils.dart';

class HomeCardWidget extends StatelessWidget {
  HomeCardWidget({super.key, required this.homeController, required this.index});
  final int index;
  final HomeController homeController;
  final FavoriteDestinationsController favoriteDestinationsController = Get.put(FavoriteDestinationsController());
  final FavoriteDestinationsList favoriteDestinationsListObj = FavoriteDestinationsList();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await homeController.onTapCardDetail(dest: homeController.destinations[index]);
      },
      child: Padding(
        padding: EdgeInsets.only(right: Get.width * 0.02),
        child: Stack(
          children: [
            homeController.destinations[index].imagePath == null
                ? Image.network(
                    "https://media.istockphoto.com/id/1409329028/tr/vekt%C3%B6r/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=DoUsTCubI4BWxm_piyvsAB7I10pJlPTEmtb5Pc5O-TE=",
                    height: Get.height * 0.2,
                    width: Get.width * 0.5,
                  )
                : ImageUtils().imageAsset(height: Get.height * 0.2, width: Get.width * 0.5, imagePath: homeController.destinations[index].imagePath!),
            Container(
              padding: EdgeInsets.fromLTRB(Get.width * 0.02, 0, 0, Get.height * 0.035),
              width: Get.width * 0.3,
              height: Get.height * 0.19,
              alignment: Alignment.bottomLeft,
              child: Text(
                homeController.destinations[index].name,
                style: TextStyle(fontFamily: "AvertaPE", fontWeight: FontWeight.w700, color: AppColors.whiteColor, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(Get.width * 0.010, 0, 0, Get.height * 0.06),
              width: Get.width * 0.3,
              height: Get.height * 0.19,
              alignment: Alignment.bottomLeft,
              child: Text(
                " \$${homeController.destinations[index].price}",
                style: TextStyle(fontFamily: "AvertaPE", color: AppColors.amberColor, fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(Get.width * 0.020, 0, 0, Get.height * 0.089),
              width: Get.width * 0.3,
              height: Get.height * 0.19,
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Destination",
                style: TextStyle(fontFamily: "AvertaPE", color: AppColors.whiteColor, fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
                alignment: Alignment.topRight,
                height: Get.height * 0.04,
                width: Get.width * 0.5,
                child: Obx(
                  () => IconButton(
                    onPressed: () {
                      favoriteDestinationsController.favoriteToggler;
                      if (FavoriteDestinationAddFunction.isFavoriteDestination.value == true) {
                        favoriteDestinationsListObj.favoriteDestinationsList.add(homeController.destinations[index]);
                      }
                    },
                    icon: favoriteDestinationsController.isFavoriteDestination.value
                        ? Icon(
                            Icons.favorite,
                            color: AppColors.BrightPurple,
                          )
                        : Icon(
                            Icons.favorite,
                            color: AppColors.PrimaryBlack,
                          ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  FavoriteDestinationsController get FavoriteDestinationAddFunction => favoriteDestinationsController;
}
