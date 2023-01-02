// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendationModel {
  String image;
  String name;
  double rating;
  int time;
  bool isInOffer;
  int? offer;
  int? offerPrice;
  RecommendationModel({
    required this.image,
    required this.name,
    required this.rating,
    required this.time,
    this.isInOffer = false,
    this.offer,
    this.offerPrice,
  });

  static final List<RecommendationModel> list = [
    RecommendationModel(
      image: 'assets/images/food11.jpg',
      name: 'Kabab Factory Palace',
      rating: 4.0,
      time: 27,
      isInOffer: true,
      offer: 50,
      offerPrice: 200,
    ),
    RecommendationModel(
      image: 'assets/images/food12.jpg',
      name: 'Kabab Factory Palace',
      rating: 3.3,
      time: 45,
    ),
    RecommendationModel(
      image: 'assets/images/food13.jpg',
      name: 'Kabab Factory Palace',
      rating: 4.9,
      time: 39,
    ),
    RecommendationModel(
      image: 'assets/images/food14.jpg',
      name: 'Kabab Factory Palace',
      rating: 5.0,
      time: 20,
      isInOffer: true,
      offer: 50,
      offerPrice: 200,
    ),
    RecommendationModel(
      image: 'assets/images/food15.jpg',
      name: 'Kabab Factory Palace',
      rating: 4.1,
      time: 57,
    ),
    RecommendationModel(
      image: 'assets/images/food16.jpg',
      name: 'Kabab Factory Palace',
      rating: 3.0,
      time: 22,
      isInOffer: true,
      offer: 50,
      offerPrice: 200,
    ),
    RecommendationModel(
      image: 'assets/images/food17.jpg',
      name: 'Kabab Factory Palace',
      rating: 3.7,
      time: 27,
      isInOffer: true,
      offer: 50,
      offerPrice: 200,
    ),
    RecommendationModel(
      image: 'assets/images/food18.jpg',
      name: 'Kabab Factory Palace',
      rating: 5.0,
      time: 34,
    ),
    RecommendationModel(
      image: 'assets/images/food19.jpg',
      name: 'Kabab Factory Palace',
      rating: 1.0,
      time: 90,
    ),
    RecommendationModel(
      image: 'assets/images/food20.jpg',
      name: 'Kabab Factory Palace',
      rating: 3.3,
      time: 27,
      isInOffer: true,
      offer: 50,
      offerPrice: 200,
    ),
  ];
}
