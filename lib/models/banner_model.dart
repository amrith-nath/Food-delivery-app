// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_test_ui/core/colors/colors.dart';

class BannerModel {
  String mainTitle;
  String title;
  String subtitle;
  String buttonText;
  String image;
  Color color;
  BannerModel({
    required this.mainTitle,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.image,
    required this.color,
  });

  static final List<BannerModel> list = [
    BannerModel(
      mainTitle: 'GRAB',
      title: '60% OFF',
      subtitle: 'Relish on flavoursome cusins & delight from top eateries',
      buttonText: 'EXPLORE NOW',
      image: '',
      color: kBlue,
    ),
    BannerModel(
      mainTitle: 'FREE',
      title: '20% OFF',
      subtitle: 'Relish on flavoursome cusins & delight from top eateries',
      buttonText: 'CLAIM OFFER',
      image: '',
      color: kRed,
    )
  ];
}
