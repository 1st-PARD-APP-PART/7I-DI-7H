import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:idih/Screen/home.dart';
import 'package:page_transition/page_transition.dart';

class ThePoors extends StatelessWidget {
  const ThePoors({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ThePoors",
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset('assets/images/Group4.png'),
        splashIconSize: 230,
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: const Color(0xFFE0C6A5),
      ),
    );
  }
}
