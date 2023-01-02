import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:food_test_ui/core/fonts/fonts.dart';
import 'package:food_test_ui/models/banner_model.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bannerList = BannerModel.list;
    return SizedBox(
      height: size.width / 1.8,
      child: Swiper(
        itemBuilder: (context, index) => swipeCard(size, bannerList[index]),
        itemCount: bannerList.length,
        autoplay: true,
        curve: Curves.fastOutSlowIn,
        pagination: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
          return customPagination(config);
        }),
      ),
    );
  }

  Container swipeCard(Size size, BannerModel banner) {
    return Container(
      width: size.width / 1.2,
      margin: const EdgeInsets.only(left: 20, right: 10, bottom: 20),
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: banner.color,
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                banner.mainTitle,
                style: KFont.h2White.copyWith(color: banner.textColor),
              ),
              kheight,
              Text(
                banner.title,
                style: KFont.h1White.copyWith(color: banner.textColor),
              ),
              kheight,
              SizedBox(
                  width: size.width / 2.3,
                  child: Text(
                    banner.subtitle,
                    style:
                        KFont.semiBoldWhite.copyWith(color: banner.textColor),
                  )),
              kheight,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kWhite),
                  onPressed: () {},
                  child: Text(
                    banner.buttonText,
                    style: TextStyle(
                      color: banner.buttonTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
          Positioned(
            right: -50,
            top: 30,
            child: Image.asset(
              banner.image,
              width: 220,
            ),
          )
        ],
      ),
    );
  }

  Builder customPagination(SwiperPluginConfig config) {
    return Builder(builder: (context) {
      var count = config.itemCount;
      var list = List.generate(
        count,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 4,
          width: index == config.activeIndex ? 30 : 10,
          decoration: BoxDecoration(
            color: index == config.activeIndex ? kRed : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

      return Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: (config.itemCount * 10) + 30,
              decoration: BoxDecoration(
                color: kGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: list,
              ),
            ),
          ),
        ],
      );
    });
  }
}
