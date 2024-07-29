import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/main.dart';
void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
 

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
            child: Image.asset("assets/Bar.png",
            fit: BoxFit.cover,),
            ),
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Image.asset("assets/sky.png",
            fit: BoxFit.cover,)
            ),
          Positioned(
  top: 64,
  left: 16,
  right: 16,
  child: GestureDetector(
    onTap: (){

    },
    child: Container(
      width: 328,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            left: 16,
            child: Row(
              children: [
                Icon(Icons.search_sharp),
                SizedBox(width: 8), // Add space between the icon and the text
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
        ],
      ),
    ),
  ),
)
        ],)
      );
   
  }
}