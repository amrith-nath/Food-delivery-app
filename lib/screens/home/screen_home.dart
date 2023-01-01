import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';
import 'package:food_test_ui/core/constants/constants.dart';
import 'package:food_test_ui/core/fonts/fonts.dart';
import 'package:food_test_ui/core/icons/icons.dart';

import 'widgets/hero_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  static const items = ['Location'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: dropDownWidget(), actions: appBarActions()),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const [
            HomeHeroWidget(),
          ],
        ),
      ),
    );
  }

  DropdownButtonHideUnderline dropDownWidget() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: null,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.location_on,
                  color: kRed,
                ),
                kWidth,
                Text(value),
              ],
            ),
          );
        }).toList(),
        style: KFont.semiBold,
        onChanged: (_) {},
        hint: const Text(
          'Whitefield',
          style: KFont.h3,
        ),
        borderRadius: BorderRadius.circular(10),
        isDense: true,
        elevation: 8,
      ),
    );
  }

  List<Widget> appBarActions() {
    return [
      TextButton.icon(
        onPressed: () {},
        icon: KIcon.offer,
        label: const Text(
          'Offers',
          style: KFont.semiBold,
        ),
      ),
      kWidth,
    ];
  }
}
