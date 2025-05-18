import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  void initState() {
    super.initState();

    // فقط یک بار اجرا می‌شه
    Future.delayed(Duration(seconds: 3), () {
      print("Navigating to LoginScreen");
      Get.off(() => LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    print("AnimationScreen is being built");

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/redpassing.json',
          width: 300,
          height: 300,
          fit: BoxFit.contain,
          repeat: true,
          animate: true,
        ),
      ),
    );
  }
}
