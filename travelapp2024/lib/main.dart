import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/register_page.dart';
import 'package:travelapp2024/splash/splash_binding.dart';
import 'package:travelapp2024/welcome_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> WelcomePage(), binding: SplashBinding()), //splashscreen bu burdan register page'e geçmesi lazım
        GetPage(name: "/second", page: ()=> RegisterPage()),
      ],
        home: WelcomePage(),
      );
   
  }
}