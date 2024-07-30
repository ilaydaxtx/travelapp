import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/interface/screens/register_page.dart';

void main(){
  runApp(WelcomePage()); //this page is actually the splash page
}

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                alignment: Alignment.center,
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
            

    );

  }
}