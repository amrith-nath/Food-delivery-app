import 'package:flutter/material.dart';
import 'package:food_test_ui/core/images/images.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class BottomBanner extends StatelessWidget {
  const BottomBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 250,
          width: double.infinity,
          color: kGrey,
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food\nDrive'.toUpperCase(),
                style: KFont.h1.copyWith(
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'The UN Worl Wide Program',
                style: KFont.semiBold.copyWith(color: Colors.grey.shade500),
              ),
              kheight15,
              Text(
                'Donate now'.toUpperCase(),
                style: KFont.semiBold.copyWith(
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationThickness: 5,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 10,
          child: Image.asset(
            bottomBanner,
            width: 200,
          ),
        )
      ],
    );
  }
}
