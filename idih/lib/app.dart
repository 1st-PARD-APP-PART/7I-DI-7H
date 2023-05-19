import 'package:flutter/material.dart';
import 'package:idih/Screen/home.dart';

class ThePoors extends StatelessWidget {
  const ThePoors({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ThePoors",
      home: HomePage(),
    );
  }
}
