import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travelapp2024/interface/screens/register_page.dart';
import 'package:travelapp2024/interface/routes.dart';

class SplashController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    _navigateToHome();
  }
}

void _navigateToHome() async {
  await Future.delayed(Duration(seconds: 3), (){ //welcome_page gitmesi lazım
    Get.offAllNamed(Routes.registerPage);
  });
}  
