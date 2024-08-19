import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/appbar/appbar_view.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/const/styles/gradients.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/home/widget/home_background_design_widget.dart';
import 'package:travelapp2024/ui/home/widget/home_bottom_bar_widget.dart';
import 'package:travelapp2024/ui/home/widget/home_favorites_destinations_widget.dart';
import 'package:travelapp2024/ui/home/widget/home_header_widget.dart';
import 'package:travelapp2024/ui/home/widget/home_hotels_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Gradients.gradientColor),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeaderWidget(controller: homeController),
              SizedBox(height: Get.height * 0.03),
              HomeFavoritesDestinationsWidget(homeController: homeController),
              SizedBox(height: Get.height * 0.03),
              HomeHotelsWidget(homeController: homeController),
              HomeBackgroundDesignWidget(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.BrightPurple,
          shape: CircleBorder(),
          child: Icon(
            Icons.headphones,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
