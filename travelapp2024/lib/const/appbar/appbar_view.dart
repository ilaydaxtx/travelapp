import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/colors.dart';

class AppbarView {
  static AppBar appBarView() {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.LightPurple,
      toolbarHeight: Get.height * 0.03,
      flexibleSpace: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/wifi.png"),
              SizedBox(
                width: Get.width * 0.01,
              ),
              Image.asset("assets/cellular.png"),
              SizedBox(
                width: Get.width * 0.01,
              ),
              Image.asset("assets/battery.png"),
              SizedBox(
                width: Get.width * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(right: Get.width * 0.02),
                child: Text(
                  "12.30",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppColors.BrightPurple,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
