import 'package:flutter/material.dart';
import 'package:food_test_ui/models/coupen_model.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class CoupenListWidget extends StatelessWidget {
  const CoupenListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          kWidth15,
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: CoupenModel.list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return coupenCard(CoupenModel.list[index]);
              }),
        ],
      ),
    );
  }

  Stack coupenCard(CoupenModel coupen) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Card(
          elevation: 0,
          child: Container(
            width: 150,
            height: 220,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [coupen.color, coupen.color.withAlpha(150)],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                stops: const [0.4, 0.7],
              ),
              color: kRed,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(clipBehavior: Clip.antiAlias, children: [
              const Positioned(
                left: -20,
                bottom: 90,
                child: CircleAvatar(
                  backgroundColor: kWhite,
                  radius: 15,
                ),
              ),
              const Positioned(
                bottom: 90,
                right: -20,
                child: CircleAvatar(
                  backgroundColor: kWhite,
                  radius: 15,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Get',
                          style: KFont.h3White,
                        ),
                        Text(
                          '${coupen.offer}%',
                          style: KFont.h1White.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'OFF',
                          style: KFont.h3White,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: kWhite,
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'save the deal',
                          style: KFont.h3.copyWith(color: kWhite, fontSize: 15),
                        ),
                      ))
                ],
              )
            ]),
          ),
        ),
        Positioned(
          right: 0,
          top: -10,
          child: Image.asset(
            coupen.image,
          ),
        ),
      ],
    );
  }
}
