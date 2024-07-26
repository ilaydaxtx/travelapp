import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/colors.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/Fill.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/Golden Gate Bridge.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Image.asset(
                'assets/Path.png',
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
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
            Positioned(
              top: 100, 
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to your new adventure",
                    style: TextStyle(
                      fontFamily: "AvertaPE",
                      fontWeight: FontWeight.w700,
                      color: AppColors.DarkPurple,
                      fontSize: 32, 
                    ),
                  ),
                  SizedBox(height: 20), 
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pick a Country",
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
