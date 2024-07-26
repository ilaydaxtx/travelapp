import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/colors.dart';

void main(){
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/Fill.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  'assets/Golden Gate Bridge.png',
                  fit: BoxFit.cover,
                ),
              ),
              
              Positioned(
                bottom: 10,
                right: 0,
                child: Image.asset(
                  'assets/Path.png',
                ),
              ),
          SingleChildScrollView(
            child: Container(
              child: Text("Welcome to your new adventure",
              style: TextStyle(
                fontFamily: "AvertaPE",
                fontWeight: FontWeight.w400,
                color: AppColors.DarkPurple,
              ),
              ),
            ),
          ),
          Positioned(
                top: 0, 
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/Bar.png',
                  fit: BoxFit.cover,
                ),
              ),
        ]),
      ),
    );
  }
}