import 'package:flutter/material.dart';
import 'package:food_test_ui/core/images/images.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class HomeHeroWidget extends StatelessWidget {
  const HomeHeroWidget({
    Key? key,
  }) : super(key: key);

  static final decoration = BoxDecoration(
    color: kRed,
    borderRadius: BorderRadius.circular(15),
  );

  static final gradient = LinearGradient(
    colors: [kBlack.withOpacity(0.26), kRed],
  );

  static const padding = EdgeInsets.all(15.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingH,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: decoration,
        child: Container(
          decoration: BoxDecoration(
            color: kRed,
            borderRadius: BorderRadius.circular(15),
            gradient: gradient,
          ),
          child: Stack(
            children: [
              Padding(
                padding: padding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heroTextWidget(),
                    kheight15,
                    heroButton(),
                  ],
                ),
              ),
              heroImageWidget()
            ],
          ),
        ),
      ),
    );
  }

  Column heroTextWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Restaurants',
          style: KFont.h2White,
        ),
        kheight,
        Text(
          'Enjoy your favourite treats',
          style: KFont.regularWhite,
        ),
      ],
    );
  }

  Positioned heroImageWidget() {
    return Positioned(
      right: -30,
      top: -50,
      child: Image.asset(
        heroImage,
        width: 150,
      ),
    );
  }

  InkWell heroButton() {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'View All',
            style: KFont.semiBoldWhite,
          ),
          Icon(
            Icons.arrow_right_alt,
            color: kWhite,
          )
        ],
      ),
    );
  }
}
