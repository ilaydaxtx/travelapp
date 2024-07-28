import 'package:get/get.dart';
import 'package:travelapp2024/controllers/welcome_controller.dart';
import 'package:travelapp2024/interface/routes.dart';
import 'package:travelapp2024/interface/screens/register_page.dart';
import 'package:travelapp2024/controllers/splash_controller.dart';
import 'package:travelapp2024/interface/screens/welcome_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.welcomePage,
      page: () => WelcomePage(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),  GetPage(
      name: Routes.registerPage,
      page: () => RegisterPage(),
      binding: BindingsBuilder(() {
        Get.put(WelcomeController());
      }),
    ),
  ];
}