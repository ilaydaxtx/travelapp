import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageUtils {
  Widget imageAsset({required double height, required double width, required String imagePath}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$imagePath"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
