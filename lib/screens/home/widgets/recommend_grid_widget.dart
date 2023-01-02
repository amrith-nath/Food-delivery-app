import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';
import '../../../core/images/images.dart';

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
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
            childAspectRatio: 1 / 1.2,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      color: kBlack,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: AssetImage(bannerImage2), fit: BoxFit.cover)),
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'sample1',
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
                              '4.2   ',
                              style: KFont.smallGrey.copyWith(fontSize: 10),
                            ),
                            Text(
                              'Sample2',
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
          }),
    );
  }
}
