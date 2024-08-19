import 'package:get/get.dart';
import 'package:travelapp2024/ui/home/controller/home_controller.dart';
import 'package:travelapp2024/ui/home/view/home_view.dart';
import 'package:travelapp2024/ui/welcome/welcome_controller.dart';
import 'package:travelapp2024/routes/routes.dart';

import 'package:travelapp2024/ui/register/view/register_view.dart';
import 'package:travelapp2024/ui/splash/splash_controller.dart';
import 'package:travelapp2024/ui/welcome/welcome_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.welcomePage,
      page: () => WelcomePage(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),
    GetPage(
      name: Routes.registerPage,
      page: () => RegisterPage(),
      binding: BindingsBuilder(() {
        Get.put(WelcomeController());
      }),
    ),
    GetPage(
      name: Routes.HomeView,
      page: () => HomeView(),
      /* binding: BindingsBuilder(){
        Get.put(HomeController());
      } */
    ),
  ];
}
