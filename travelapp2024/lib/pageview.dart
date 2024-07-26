import 'package:flutter/material.dart';
import 'main.dart'; 
import 'register_page.dart'; 

class VerticalPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          MyApp(),
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
