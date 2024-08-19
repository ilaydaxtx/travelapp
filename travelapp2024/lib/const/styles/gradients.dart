import 'package:flutter/material.dart';

class Gradients {
  static const LinearGradient gradientColor = LinearGradient(
    colors: [Color.fromARGB(0, 255, 255, 255), Color.fromARGB(255, 255, 255, 255), Color(0xFFF5DCD0)],
    stops: [0, 0.8, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
