import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/welcome_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> WelcomePage()),
      ],
        home: WelcomePage(),
      );
   
  }
}