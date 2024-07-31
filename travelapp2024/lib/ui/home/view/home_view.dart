import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/appbar/appbar_view.dart';
import 'package:travelapp2024/const/styles/colors.dart';
import 'package:travelapp2024/const/styles/gradients.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppbarView.appBarView(),
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          gradient: Gradients.gradientColor,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              
              Container(
                
                width: Get.width,
                height: Get.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/sky.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align( //TODO dhchdb??
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: Get.width * 0.9,
                    height: Get.height * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset("assets/search.png",),
                        ),
                        SizedBox(width: Get.width * 0.03,),
                        Text("Where are you traveling to?",
                        style: TextStyle(fontFamily: "AvertaPE",
                        fontWeight: FontWeight.w600,
                        color: AppColors.PrimaryBlack,
                        fontSize: 16),),
                      ],),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.03,),
              Container(
              width: Get.width * 0.9,
              height: Get.height * 0.05,
              
              child: Text("Favourite Destinations",
              style: TextStyle(fontWeight: FontWeight.w700,
              fontFamily: "AvertaPE",
              fontSize: 20,
              color: AppColors.PrimaryBlack),),
              ),
              
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: Get.width *0.9,
                  height: Get.height * 0.2, //TODO add icons + resize the height
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          children: [
                            Container(
                              width: Get.width * 0.5,
                              height: Get.height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/barcelona.png")),
                                borderRadius: BorderRadius.circular(4)),
                            ),
                            SizedBox(width: Get.width * 0.03,),
                            Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              width: Get.width * 0.5,
                              height: Get.height * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/barcelona.png")),
                                borderRadius: BorderRadius.circular(4)),
                            ),
                          ],
                        ),
                      
                    ),
              ),
              Container(
                width: Get.width * 0.9,
              child: Text("Highest rated Hotels near you",
              style: TextStyle(fontWeight: FontWeight.w700,
              fontFamily: "AvertaPE",
              fontSize: 20,
              color: AppColors.PrimaryBlack),),),
        
               Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: Get.width *0.9,
                  height: Get.height * 0.2,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          children: [
                            Container(
                              width: Get.width * 0.5,
                              height: Get.height * 0.6,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/barcelona.png")),
                                borderRadius: BorderRadius.circular(4)),
                            ),
                            SizedBox(width: Get.width * 0.03,),
                            Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              width: Get.width * 0.5,
                              height: Get.height * 0.6,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/barcelona.png")),
                                borderRadius: BorderRadius.circular(4)),
                            ),
                          ],
                        ), 
                    ),
              ),  
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Image.asset("assets/headphone.png"),
),

    );
  }
}
