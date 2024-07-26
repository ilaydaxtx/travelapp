import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/register_page.dart';

void main(){
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            appBar: null,
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
              Align(
                alignment: Alignment.center,  // Center the image within its parent
                child: Image.asset('assets/Logo.png'),
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
            floatingActionButton: FloatingActionButton(onPressed: () { //delete this later
              Get.to(()=>RegisterPage());
            },),
          ),
    );

  }
}