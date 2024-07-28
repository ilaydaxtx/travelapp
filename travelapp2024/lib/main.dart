import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/interface/pages.dart';
import 'package:travelapp2024/interface/screens/register_page.dart';
import 'package:travelapp2024/interface/routes.dart';
import 'package:travelapp2024/splash/splash_binding.dart';
import 'package:travelapp2024/interface/screens/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.welcomePage,
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
    );
  }
}
