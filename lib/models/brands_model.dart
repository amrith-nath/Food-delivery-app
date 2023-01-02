// ignore_for_file: public_member_api_docs, sort_constructors_first
class BrandModel {
  String image;
  String title;
  int time;
  String offer;
  BrandModel({
    required this.image,
    required this.title,
    required this.time,
    required this.offer,
  });

  static final List<BrandModel> list = [
    BrandModel(
      image: 'assets/images/brand1.png',
      title: 'veggie Tomato Mix',
      time: 30,
      offer: 'free item',
    ),
    BrandModel(
      image: 'assets/images/brand2.png',
      title: 'veggie Tomato Mix',
      time: 10,
      offer: '60% 0ff',
    ),
    BrandModel(
      image: 'assets/images/brand3.png',
      title: 'veggie Tomato Mix',
      time: 25,
      offer: 'free item',
    ),
    BrandModel(
      image: 'assets/images/brand4.png',
      title: 'veggie Tomato Mix',
      time: 44,
      offer: 'free item',
    ),
    BrandModel(
      image: 'assets/images/brand5.png',
      title: 'veggie Tomato Mix',
      time: 30,
      offer: '20% off',
    ),
    BrandModel(
      image: 'assets/images/brand6.png',
      title: 'veggie Tomato Mix',
      time: 5,
      offer: '40% off',
    ),
    BrandModel(
      image: 'assets/images/brand7.png',
      title: 'veggie Tomato Mix',
      time: 35,
      offer: 'free item',
    ),
    BrandModel(
      image: 'assets/images/brand8.png',
      title: 'veggie Tomato Mix',
      time: 90,
      offer: 'free item',
    ),
    BrandModel(
      image: 'assets/images/brand9.png',
      title: 'veggie Tomato Mix',
      time: 15,
      offer: '40% off',
    ),
    BrandModel(
      image: 'assets/images/brand10.png',
      title: 'veggie Tomato Mix',
      time: 20,
      offer: 'free item',
    ),
  ];
}
