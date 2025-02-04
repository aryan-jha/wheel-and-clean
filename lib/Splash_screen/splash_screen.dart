import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wheel_and_clean/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LandingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff5546FF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Center(
                  child: Image.asset(
                      'assets/splashAsset/Auto Layout Vertical.png')),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Center(
                    child: Image.asset(
                        'assets/splashAsset/Animation - splash.png')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
