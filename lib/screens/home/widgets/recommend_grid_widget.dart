import 'package:flutter/material.dart';
import 'package:food_test_ui/models/recommendation_model.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class RecommendGridWidget extends StatelessWidget {
  const RecommendGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: RecommendationModel.list.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
            childAspectRatio: 1 / 1.2,
          ),
          itemBuilder: (context, index) {
            return gridCard(RecommendationModel.list[index]);
          }),
    );
  }

  Column gridCard(RecommendationModel product) {
    return Column(
      children: [
        Container(
          height: 100,
          margin: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(product.image), fit: BoxFit.cover)),
          child: product.isInOffer
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: const BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Row(
                        children: [
                          Text(
                            '${product.offer}% OFF',
                            style: KFont.semiBold.copyWith(color: kRed),
                          ),
                          Text(
                            ' UPTO ₹${product.offerPrice}',
                            style: KFont.regular
                                .copyWith(color: kRed, fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : Container(
                  color: Colors.transparent,
                ),
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: KFont.semiBold.copyWith(
                    fontSize: 13,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                kheight,
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: kRed,
                      size: 12,
                    ),
                    Text(
                      '${product.rating}   ',
                      style: KFont.smallGrey.copyWith(fontSize: 10),
                    ),
                    Text(
                      '${product.time} min',
                      style: KFont.smallGrey.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
