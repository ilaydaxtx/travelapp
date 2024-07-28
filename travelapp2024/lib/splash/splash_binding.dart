

import 'dart:ffi';

import 'package:get/get.dart';
import 'package:travelapp2024/splash/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<SplashController>(() => SplashController());
  }
}