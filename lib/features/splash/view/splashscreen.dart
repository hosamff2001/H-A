import 'dart:async';

import 'package:ecommerce/core/utliz/cashmemory.dart';
import 'package:ecommerce/core/utliz/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resources/constants_manager.dart';
import '../../Onborading/view/on_borading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: AppConstants.splashDelay), () {
      if (CashHelper.getdata(key: "onBoarding") == null) {   
      Get.off(() => OnBordingScreen());
      }
      else {
        Get.offNamed(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: Lottie.asset("assets/animations/splash.json")),
        ),
      ),
    );
  }
}
