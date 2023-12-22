import 'package:ecommerce/core/utliz/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/resources/theme_manager.dart';
import 'core/utliz/cashmemory.dart';
import 'features/splash/view/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CashHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H&A',
      theme: getApplicationTheme(),
      home: const SplashScreen(),
      routes: routes,
    );
  }
}
