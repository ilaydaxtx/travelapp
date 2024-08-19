import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/assets_const.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/home/view/home_view.dart';
import 'package:travelapp2024/utils/image_utils.dart';

class DetailView extends StatelessWidget {
  HomeController homeController;

  DetailView({super.key, required this.homeController});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ImageUtils().imageAsset(height: Get.height * 0.3, width: Get.width, imagePath: ImageAssetsConst.barcelona),
                  GestureDetector(
                    onTap: () {
                      Get.to(HomeView());
                    },
                    child: Container(
                      width: Get.width * 0.5,
                      height: Get.height * 0.1,
                      padding: EdgeInsets.only(top: Get.height * 0.01),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: Get.width * 0.03),
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.whiteColor,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          Text(
                            "Go Back",
                            style: TextStyle(color: AppColors.whiteColor, fontFamily: "AvertaPE", fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: Get.width * 0.5,
                    height: Get.height * 0.3,
                    padding: EdgeInsets.fromLTRB(Get.width * 0.03, 0, 0, Get.height * 0.02),
                    child: Text(
                      homeController.selectedFavDest.value!.name,
                      style: TextStyle(color: AppColors.whiteColor, fontSize: 20, fontFamily: "AvertaPE", fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.07,
                padding: EdgeInsets.fromLTRB(Get.width * 0.03, Get.height * 0.02, 0, 0),
                child: Text(
                  "About ${homeController.selectedFavDest.value!.name}",
                  style: TextStyle(color: AppColors.blackColor, fontFamily: "AvertaPE", fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.18,
                padding: EdgeInsets.fromLTRB(Get.width * 0.03, Get.height * 0.01, Get.width * 0.03, 0),
                child: Text(
                  "Barcelona, the cosmopolitan capital of the Catalonia region in Spain, is known for its art and architecture. The fantastic Sagrada Familia church and other modernist landmarks designed by Antoni Gaudí adorn the city",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: AppColors.Grey, fontFamily: "AvertaPE", fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.03,
                padding: EdgeInsets.only(left: Get.width * 0.03),
                child: Text(
                  "Best Places in Barcelona",
                  style: TextStyle(fontFamily: "AvertaPE", fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: Get.width * 0.95,
                height: Get.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.details.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            height: Get.height * 0.16,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                            child: ImageUtils().imageAsset(height: Get.height, width: Get.width, imagePath: homeController.details[index].imagePath),
                          ),
                          Container(
                              width: Get.width * 0.5,
                              height: Get.height * 0.07,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    homeController.details[index].name,
                                    style: TextStyle(color: AppColors.PrimaryBlack, fontFamily: "AvertaPE", fontWeight: FontWeight.w700, fontSize: 14),
                                  ),
                                  Text(
                                    homeController.details[index].subText,
                                    style: TextStyle(color: AppColors.PrimaryBlack, fontWeight: FontWeight.w500, fontFamily: "AvertaPE", fontSize: 12),
                                  )
                                ],
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.fromLTRB(Get.width * 0.03, 0, 0, Get.height * 0.02),
                child: const Text(
                  "Highest rated Hotels near you",
                  style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "AvertaPE", fontSize: 18, color: AppColors.PrimaryBlack),
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
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Card(
                  margin: EdgeInsets.fromLTRB(Get.width * 0.03, Get.height * 0.03, Get.width * 0.03, Get.height * 0.03),
                  elevation: 5,
                  color: AppColors.DarkPurple,
                  shadowColor: AppColors.blackColor,
                  child: Container(
                      width: Get.width,
                      height: Get.height * 0.08,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.headphones,
                                color: AppColors.whiteColor,
                              )),
                          Container(
                            width: Get.width * 0.7,
                            child: Text(
                              "Do you have any questions?",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColors.whiteColor, fontFamily: "AvertaPE", fontWeight: FontWeight.w700),
                            ),
                          ),
                          ImageUtils().imageAsset(height: Get.height * 0.03, width: Get.width * 0.03, imagePath: ImageAssetsConst.doggy),
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
