import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/const/styles/gradients.dart';

class HomeBackgroundDesignWidget extends StatelessWidget {
  const HomeBackgroundDesignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          width: Get.width,
          height: Get.height * 0.15,
          child: Row(
            children: [
              Image.asset(
                "assets/berlin.png",
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: Get.width * 0.1,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: Get.height,
                child: Image.asset(
                  "assets/Clouds.png",
                ),
              ),
              Container(
                width: Get.width * 0.4,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/Clouds.png",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
