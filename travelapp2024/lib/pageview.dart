import 'package:flutter/material.dart';
import 'package:travelapp2024/welcome_page.dart';
import 'register_page.dart'; 

class VerticalPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          WelcomePage(),
          RegisterPage(),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VerticalPageView(),
  ));
}
