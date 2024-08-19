import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key, required this.controller});
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.30,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sky.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          width: Get.width * 0.9,
          height: Get.height * 0.07,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Image.asset(
                  "assets/search.png",
                ),
              ),
              SizedBox(
                width: Get.width * 0.03,
              ),
              const Text(
                "Where are you traveling to?",
                style: TextStyle(fontFamily: "AvertaPE", fontWeight: FontWeight.w600, color: AppColors.PrimaryBlack, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
