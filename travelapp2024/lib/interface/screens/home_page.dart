import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/controllers/favorites_controller.dart';
import 'package:travelapp2024/global/styles/colors.dart';
import 'package:travelapp2024/main.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final DestinationController controller = Get.put(DestinationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/Bar.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/sky.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/Fill.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 760,
            left: 140,
            child: Image.asset(
              "assets/Clouds.png",
              
            ),
          ),
          Positioned(
            top: 680,
            left: 10,
            child: Image.asset(
              "assets/Clouds (1).png",
              
            ),
          ),
          Positioned(
            top: 640,
            left: 10,
            child: Image.asset(
              "assets/berlin.png",
              
            ),
          ),
          Positioned(
            top: 640,
            left: 10,
            child: Image.asset(
              "assets/berlin.png",
              
            ),
          ),
          Positioned(
            top: 64,
            left: 16,
            right: 16,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 328,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Icon(Icons.search_sharp),
                    ),
                    SizedBox(width: 8), 
                    Text(
                      "Where are you travelling?",
                      style: TextStyle(
                        fontFamily: "AvertaPE",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 285,
            left: 16,
            child: Container(
              width: 328,
              height: 22,
              child: Text(
                "Favourite Destinations",
                style: TextStyle(
                  fontFamily: "AvertaPE",
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColors.PrimaryBlack,
                ),
              ),
            ),
          ),
          
          Positioned(

            top: 320,
            left: 16,
            right: 16,
            child: Column(
              children: List.generate(
                controller.destinations.length,
                (index) {
                  var destination = controller.destinations[index];
                  return GestureDetector(
                    onTap: () {
                      controller.toggleFavorite(destination);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            destination.name,
                            style: TextStyle(
                              fontFamily: "AvertaPE",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            destination.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: destination.isFavorite
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 525,
            left: 16,
            child: Container(
            width: 328,
            height: 22,
            child: Text("Highest-rated hotels near you",
            style: TextStyle(
              fontFamily: "AvertaPE",
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.PrimaryBlack,
            ),),
            
          ))
        ],
      ),
    );
  }
}

class Destination {
  String name;
  bool isFavorite;

  Destination(this.name, this.isFavorite);
}

class DestinationController extends GetxController {
  var destinations = <Destination>[
    Destination("Barcelona", false),
    Destination("Rio", false),
    Destination("Tokyo", false),
  ].obs;

  void toggleFavorite(Destination destination) {
    destination.isFavorite = !destination.isFavorite;
    destinations.refresh();
  }
}
