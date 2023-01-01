import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';

import '../home/screen_home.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startNavigation(context);
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: kRed,
        ),
      ),
    );
  }

  startNavigation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => const ScreenHome(),
      ),
    );
  }
}
