// food item
class Food {
  final String name;
  final String descrebtion;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addons> availableAddons;

  Food(
      {required this.name,
      required this.descrebtion,
      required this.imagePath,
      required this.price,
      required this.availableAddons,
      required this.category});
}

// food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//addons
class Addons {
  String name;
  double price;
  Addons(this.name, this.price);
}
