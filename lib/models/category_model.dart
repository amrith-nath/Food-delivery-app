class Categories {
  String image;
  String name;

  Categories({required this.image, required this.name});

  static List<Categories> list = [
    Categories(image: 'assets/images/burger.png', name: 'Burger'),
    Categories(image: 'assets/images/pizza.png', name: 'Pizza'),
    Categories(image: 'assets/images/fries.png', name: 'Fries'),
    Categories(image: 'assets/images/chicken.png', name: 'Fried Chicken'),
    Categories(image: 'assets/images/bread.png', name: 'donuts'),
    Categories(image: 'assets/images/sandwich.png', name: 'Sandwitch'),
    Categories(image: 'assets/images/ice_cream.png', name: 'Ice cream'),
    Categories(image: 'assets/images/soda.png', name: 'Drinks'),
  ];
}
