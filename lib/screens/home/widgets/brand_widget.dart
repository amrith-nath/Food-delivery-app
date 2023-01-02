import 'package:flutter/material.dart';
import 'package:food_test_ui/models/brands_model.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class BrandGridWidget extends StatelessWidget {
  const BrandGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          kWidth15,
          GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: BrandModel.list.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 0.6,
              ),
              itemBuilder: (context, index) {
                return brandCardWidget(BrandModel.list[index]);
              }),
        ],
      ),
    );
  }

  Card brandCardWidget(BrandModel brand) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 1,
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: kWhite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    brand.image,
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    brand.title,
                    style: KFont.h3.copyWith(fontSize: 10),
                  ),
                  Text(
                    '${brand.time} mins',
                    style: KFont.smallGrey.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kRed,
              child: Center(
                child: Text(
                  brand.offer.toUpperCase(),
                  style: KFont.h3.copyWith(color: kWhite, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
