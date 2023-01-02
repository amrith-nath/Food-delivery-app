import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';
import 'package:food_test_ui/core/constants/constants.dart';
import 'package:food_test_ui/core/fonts/fonts.dart';
import 'package:food_test_ui/core/icons/icons.dart';
import 'package:food_test_ui/screens/home/widgets/brand_widget.dart';
import 'package:food_test_ui/screens/home/widgets/navigation_bar.dart';
import 'widgets/banner_widget.dart';
import 'widgets/bottom_banner.dart';
import 'widgets/category_widget.dart';
import 'widgets/coupen_list_widget.dart';
import 'widgets/hero_widget.dart';
import 'widgets/recommend_grid_widget.dart';
import 'widgets/top_picks_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  static const items = ['Location'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: dropDownWidget(), actions: appBarActions()),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          kheight20,
          const HomeHeroWidget(),
          kheight20,
          homeHeadingWidget(
            title: 'Categories',
            icon: KIcon.fastFood,
          ),
          kheight15,
          const CategoryWidget(),
          kheight40,
          const BannerWidget(),
          kheight30,
          homeHeadingWidget(
            title: 'Top Picks For You',
            icon: KIcon.heart,
          ),
          kheight15,
          const TopPicksWidget(),
          kheight30,
          homeHeadingWidget(
            title: 'Breakfast recommendations',
            icon: KIcon.heart,
          ),
          kheight15,
          const RecommendGridWidget(),
          kheight30,
          homeHeadingWidget(
              title: 'Popular Brands',
              icon: KIcon.fastFood,
              trailing: 'View All'),
          kheight15,
          const BrandGridWidget(),
          kheight30,
          homeHeadingWidget(
              title: 'Coupens For You',
              icon: KIcon.heart,
              trailing: 'View All'),
          kheight15,
          const CoupenListWidget(),
          kheight30,
          const BottomBanner(),
        ],
      ),
      bottomNavigationBar: const NavigationWidget(),
    );
  }

  Padding homeHeadingWidget(
      {required String title, required Widget icon, String? trailing}) {
    return Padding(
      padding: kPaddingH,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: KFont.h3,
              ),
              kWidth,
              SizedBox(
                height: 20,
                width: 20,
                child: Center(child: icon),
              ),
            ],
          ),
          Text(
            trailing ?? '',
            style: KFont.regular,
          ),
        ],
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
