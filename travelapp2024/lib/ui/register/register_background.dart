import 'package:flutter/material.dart';
import 'package:travelapp2024/const/styles/gradients.dart'; 

class RegisterView { //register page's background 
  static Stack registerView() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Golden Gate Bridge.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: Gradients.gradientColor,
          ),
        ),
      ],
    );
  }
}
