import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/global/styles/colors.dart';

class AppbarView {
  static AppBar appBarView() {
    return AppBar(
      backgroundColor: AppColors.LightPurple,
      toolbarHeight: Get.height*0.03,
      flexibleSpace: SafeArea(
        child: Container(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset("assets/wifi.png"),
            Image.asset("assets/cellular.png"),
            Image.asset("assets/battery.png"),
            Text("12.30",
            style: TextStyle(fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppColors.BrightPurple,),)

        ],)),
      ),
    );
    
  }
}
