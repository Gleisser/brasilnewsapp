import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        child: Stack(
          children: [
            Lottie.asset('assets/images/lotties/intro.json'),
            Image.asset('assets/images/avatar/logo.png'),
          ],
        ),
      ),
      nextScreen: IntroScreen(),
    );
  }
}
