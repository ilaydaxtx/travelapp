import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travelapp2024/ui/register/view/register_view.dart';
import 'package:travelapp2024/routes/routes.dart';

class SplashController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    _navigateToHome();
  }
}

void _navigateToHome() async {
  await Future.delayed(Duration(seconds: 2), (){ //goes to welcome_page 
    Get.offAllNamed(Routes.registerPage);
  });
}  
