import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/appbar/appbar_view.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/const/styles/gradients.dart';
import 'package:travelapp2024/ui/home/view/home_view.dart';
import 'package:travelapp2024/ui/register/register_background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView.appBarView(),
     
body: Stack(
  children: [
    RegisterView.registerView(), 
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width * 0.9,
            child: Text(
              "Welcome to your new adventure",
              style: TextStyle(
                fontFamily: "AvertaPE",
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.DarkPurple,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Container( //dropdown + icon needed
            width: Get.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Pick a country"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.01),
          Container( //phone number validation needed
            width: Get.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Phone Number"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.01),
          Container(
            width: Get.width * 0.9,
            child: Text(
              "We will send you a code via SMS to confirm your phone number.",
              style: TextStyle(
                fontFamily: "Sans Serif",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.Grey,
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          Container(
            width: Get.width * 0.9,
            height: Get.height * 0.06,
            child: GestureDetector(
              onTap: () {
                Get.to(() => HomeView());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.BrightPurple,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                width: Get.width * 0.9,
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontFamily: "AvertaPE",
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.2,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Facebook.png"),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.006),
              Container(
                width: Get.width * 0.2,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Google.png"),
                  ),
                ),
              ),
              SizedBox(width: Get.width * 0.006),
              Container(
                width: Get.width * 0.2,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Apple.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.1),
          Container(
            child: Text(
              "Login Here",
              style: TextStyle(
                fontFamily: "AvertaPE",
                fontWeight: FontWeight.w600,
                color: AppColors.BrightPurple,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
),

    );
  }
}
