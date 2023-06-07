import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvc/res/routes/routes.dart';
import 'package:mvvc/view/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
