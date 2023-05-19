import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const ThePoors());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}