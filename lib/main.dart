import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';
import 'package:food_test_ui/screens/splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kRed,
      ),
      home: const ScreenSplash(),
    );
  }
}
