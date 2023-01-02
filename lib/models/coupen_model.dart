// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/rendering.dart';
import 'package:food_test_ui/core/colors/colors.dart';

class CoupenModel {
  int offer;
  String image;
  Color color;
  CoupenModel({
    required this.offer,
    required this.image,
    required this.color,
  });

  static final List<CoupenModel> list = [
    CoupenModel(offer: 30, image: 'assets/images/coupen1.png', color: kRed),
    CoupenModel(
        offer: 60, image: 'assets/images/coupen2.png', color: kCoupenColor1),
    CoupenModel(
        offer: 40, image: 'assets/images/coupen3.png', color: kCoupenColor2),
  ];
}
