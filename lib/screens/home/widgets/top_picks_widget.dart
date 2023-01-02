import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';

import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';
import '../../../models/top_picks_model.dart';

class TopPicksWidget extends StatelessWidget {
  const TopPicksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: TopPicks.list.length,
        itemBuilder: (context, index) {
          var product = TopPicks.list[index];

          return Container(
            width: 80,
            margin: index == 0
                ? const EdgeInsets.only(left: 20)
                : const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    product.isInOffer
                        ? Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    kBlack,
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  stops: [0.3, 0.6]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            clipBehavior: Clip.hardEdge,
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${product.offer}% OFF',
                                  style: KFont.semiBoldWhite,
                                ),
                                Text(
                                  'Upto ₹${product.offerPrice}',
                                  style: KFont.smallGrey.copyWith(
                                      color: kWhite,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                kheight,
                Text(
                  product.name,
                  style: KFont.semiBold.copyWith(
                    fontSize: 13,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                kheight,
                Text(
                  '${product.time.toString()} min',
                  style: KFont.smallGrey,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
