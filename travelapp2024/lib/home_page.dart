import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
          Positioned(
            child: Image.asset("asset/sky.png")),
        ],)
      ),
    );
  }
}