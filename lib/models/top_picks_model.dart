// ignore_for_file: public_member_api_docs, sort_constructors_first
class TopPicks {
  String name;
  int time;
  String image;
  bool isInOffer;
  int? offer;
  int? offerPrice;
  TopPicks({
    required this.name,
    required this.time,
    required this.image,
    this.isInOffer = false,
    this.offer,
    this.offerPrice,
  });

  static final List<TopPicks> list = [
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food7.jpg',
      isInOffer: true,
      offer: 60,
      offerPrice: 120,
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food8.jpg',
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food9.jpg',
      isInOffer: true,
      offer: 40,
      offerPrice: 200,
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food10.jpg',
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food1.jpg',
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food2.jpg',
      isInOffer: true,
      offer: 60,
      offerPrice: 120,
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food3.jpg',
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food4.jpg',
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food5.jpg',
      isInOffer: true,
      offer: 60,
      offerPrice: 120,
    ),
    TopPicks(
      name: 'Kabab Factory Paradise',
      time: 30,
      image: 'assets/images/food6.jpg',
    ),
  ];
}
