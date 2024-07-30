import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:travelapp2024/routes/pages.dart';
import 'package:travelapp2024/ui/register/register_page.dart';
import 'package:travelapp2024/routes/routes.dart';
import 'package:travelapp2024/ui/splash/splash_binding.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.welcomePage,
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
    );
  }
}
