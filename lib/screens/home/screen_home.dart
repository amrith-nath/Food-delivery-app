import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home',
        ),
      ),
    );
  }
}
