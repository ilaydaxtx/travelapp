import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travelapp2024/register_page.dart';

class SplashController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    _navigateToHome();
  }
}

void _navigateToHome() async {
  await Future.delayed(Duration(seconds: 2), (){ //welcome_page gitmesi lazım
    Get.offAllNamed("/");
  });
}  
