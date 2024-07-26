import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
            appBar: null,
            body: Stack(children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/Golden Gate Bridge.png',
                  fit: BoxFit.cover,
                ),
              ),
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
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/Bar.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/Path.png',
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.center,  // Center the image within its parent
                child: Image.asset('assets/Logo.png'),
              )

            ]),
          ),
    );

  }
}