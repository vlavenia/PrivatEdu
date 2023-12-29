import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:privatedu/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/icon/Logo.png",
          width: 260.0,
          height: 60.0,
          fit: BoxFit.fill,
        ).animate().fadeIn(duration: 2000.ms),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
