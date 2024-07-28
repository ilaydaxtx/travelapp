import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/global/styles/colors.dart';
import 'package:travelapp2024/interface/screens/home_page.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/Fill.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/Golden Gate Bridge.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Image.asset(
                'assets/Path.png',
                errorBuilder: (context, error, stackTrace) {
                  return Container(color: Colors.red); //if error occurs 
                },
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
              top: 100, 
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 328,
                    child: Text(
                      "Welcome to your new adventure",
                      style: TextStyle(
                        fontFamily: "AvertaPE",
                        fontWeight: FontWeight.w700,
                        color: AppColors.DarkPurple,
                        fontSize: 32, 
                      ),
                    ),
                  ),
                  SizedBox(height: 20), 
                  Container(
                    width: 328,
                    child: TextFormField(
                      
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        labelText: "Pick a Country",
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 328,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        
                        labelText: "Phone Number",
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 328,
                    child: Text("We will send you a code via SMS to confirm your phone number.",
                    style: TextStyle(
                      fontFamily: "Sans Serif",
                      fontWeight: FontWeight.w600,
                      color: AppColors.Grey,
                      
                    ),),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      //homepage e gonder
                    },
                    child: Container(
                      width: 328,
                      height: 48,
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                      color: AppColors.BrightPurple),
                      child: Center(
                        child: Text("submit",
                        style: TextStyle(color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Facebook.png"),
                      SizedBox(width: 25),
                      Image.asset("assets/Google.png"),
                      SizedBox(width: 25),
                      Image.asset("assets/Apple.png")
                    ],
                  ),
                  SizedBox(height: 126,),
                  Container(
                    width: 328,
                    child: 
                    Center(
                      child: Text("Login",
                      style: TextStyle(
                        fontFamily: "AvertaPE",
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: AppColors.BrightPurple
                      ),),
                    ),
                    
                  ),
                  ElevatedButton(onPressed: (){
                    Get.to(()=>HomePage());

                  }, child: Text("go to next page"),) //bunu sil
                ],
                
              ),
              
            ),
          ],
        ),

    );
  }
}
