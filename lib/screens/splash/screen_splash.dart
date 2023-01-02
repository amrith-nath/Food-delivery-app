import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';
import 'package:food_test_ui/core/constants/constants.dart';
import 'package:food_test_ui/core/fonts/fonts.dart';
import 'package:food_test_ui/core/keys/keys.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startNavigation(context);
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'YUMMY',
              style: KFont.h3.copyWith(color: kRed, fontSize: 25),
            ),
            kheight30,
            const CircularProgressIndicator(
              color: kRed,
            ),
          ],
        ),
      ),
    );
  }

  startNavigation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    navigatorKey.currentState!.pushReplacementNamed('/home');
  }
}
