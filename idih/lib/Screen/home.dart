import 'package:flutter/material.dart';

import '../util/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '거지촌',
          style: title(color: Colors.black),
        ),
      ),
    );
  }
}
