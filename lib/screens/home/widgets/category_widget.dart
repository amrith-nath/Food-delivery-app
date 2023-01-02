import 'package:flutter/material.dart';
import 'package:food_test_ui/models/category_model.dart';

import '../../../core/constants/constants.dart';
import '../../../core/fonts/fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);
  static final list = Categories.list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingH,
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10,
            childAspectRatio: 1 / 1.1,
          ),
          itemBuilder: (context, index) {
            return gridItemWidget(list[index]);
          }),
    );
  }

  Column gridItemWidget(Categories category) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          category.image,
          width: 70,
        ),
        Text(
          category.name,
          style: KFont.smallGrey,
        )
      ],
    );
  }
}
