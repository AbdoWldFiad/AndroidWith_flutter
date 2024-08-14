import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurants extends ChangeNotifier {
  final List<Food> _menu = [
    //burger
    Food(
        name: "burder",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 10.99,
        availableAddons: [
          Addons("Extra cheese", 0.99),
          Addons("beacon", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "booor gur",
        descrebtion: "this should be a quick description as a test for what the hell i am doing, lets try make it bigger,Even Bigger, that surprisingly worked!",
        imagePath: "lib/images/82725.jpg",
        price: 14.99,
        availableAddons: [
          Addons("Extra cheese", 0.99),
          Addons("beacon", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 19.99,
        availableAddons: [
          Addons("Extra cheese", 0.99),
          Addons("beacon", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 24.99,
        availableAddons: [
          Addons("Extra cheese", 0.99),
          Addons("beacon", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.burgers),
    //salads
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 4.99,
        availableAddons: [
          Addons("oliver oil", 0.99),
          Addons("onions", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 9.99,
        availableAddons: [
          Addons("oliver oil", 0.99),
          Addons("onions", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 19.99,
        availableAddons: [
          Addons("oliver oil", 0.99),
          Addons("onions", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 29.99,
        availableAddons: [
          Addons("oliver oil", 0.99),
          Addons("onions", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.salads),
    //sides
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 2.99,
        availableAddons: [
          Addons("bread", 0.99),
          Addons("pepsi", 1.99),
          Addons("chips", 2.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 7.99,
        availableAddons: [
          Addons("bread", 0.99),
          Addons("pepsi", 1.99),
          Addons("chips", 2.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 11.99,
        availableAddons: [
          Addons("bread", 0.99),
          Addons("pepsi", 1.99),
          Addons("chips", 2.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 14.99,
        availableAddons: [
          Addons("bread", 0.99),
          Addons("pepsi", 1.99),
          Addons("chips", 2.99)
        ],
        category: FoodCategory.sides),
    //desserts
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 15.99,
        availableAddons: [
          Addons("add choclete", 0.99),
          Addons("canndels", 1.99),
          Addons("extra caramel layer", 2.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 19.99,
        availableAddons: [
          Addons("add choclete", 0.99),
          Addons("canndels", 1.99),
          Addons("extra caramel layer", 2.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 30.99,
        availableAddons: [
          Addons("add choclete", 0.99),
          Addons("canndels", 1.99),
          Addons("extra caramel layer", 2.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 33.99,
        availableAddons: [
          Addons("add choclete", 0.99),
          Addons("canndels", 1.99),
          Addons("extra caramel layer", 2.99)
        ],
        category: FoodCategory.desserts),
    //drinks
    Food(
        name: "cock",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 4.99,
        availableAddons: [
          Addons("Extra sugar", 0.99),
          Addons("ice cubs", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "red bull(cat pees)",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 6.99,
        availableAddons: [
          Addons("Extra sugar", 0.99),
          Addons("ice cubs", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 9.99,
        availableAddons: [
          Addons("Extra sugar", 0.99),
          Addons("ice cubs", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "name",
        descrebtion: "description",
        imagePath: "lib/images/82725.jpg",
        price: 11.99,
        availableAddons: [
          Addons("Extra sugar", 0.99),
          Addons("ice cubs", 1.99),
          Addons("avocado", 2.99)
        ],
        category: FoodCategory.drinks),
  ];
  // GETTERS
  List<Food> get menu => _menu;
  List<CartItem> get card => _card;
  //OPERATIONS
  //user card
  final List<CartItem> _card = [];
  //add to card
  void addToCard(Food food , List<Addons> selectedAddons) {
    // see if there is a card item with the same food and addons
  CartItem? cardItem = _card.firstWhereOrNull((item) {
    // chick if the food item is the same
    bool isSameFood = item.food == food;
    // chick if the list of selected addons are the same
    bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameFood && isSameAddons;
  });
    // if already exists, increase its number
    if (cardItem != null){cardItem.quantity++;}
    // else, add to card as new item
    else{_card.add(CartItem(food: food, selectedAddons: selectedAddons));}
    notifyListeners();
  }
  //remove from card
  void removeFromCard(CartItem cardItem){
    int cardIndex = _card.indexOf(cardItem);

    if (cardIndex != -1){
      if (_card[cardIndex].quantity >1){
        _card[cardIndex].quantity--;}
      else{_card.removeAt(cardIndex);}
    }
    notifyListeners();
  }
  //get total price of card
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cardItem in _card){
      double itemTotal = cardItem.food.price;
      for (Addons addons in cardItem.selectedAddons){
        itemTotal += addons.price;
      }
      total += itemTotal*cardItem.quantity;
    }
    return total;
  }
  //get total number of items in card
  int getTotalItemCount() {
    int totalitemcount = 0;
    for (CartItem cardItem in _card) {
      totalitemcount = cardItem.quantity;
    }
    return totalitemcount;
  }
  // clear card
  void clearCard() {
      _card.clear();
      notifyListeners();
  }

    //HELPERS

  //generate recipe
  String displayCartReceipte() {
    final receipt = StringBuffer();
    receipt.writeln("Here's' your receipt");
    receipt.writeln('');
  // format the code to include seconds only
  String formatteDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

  receipt.writeln(formatteDate);
  receipt.writeln("");
  receipt.writeln('_______');

  for (final cartItem in _card) {
    receipt.writeln("${cartItem.quantity} X ${cartItem.food.name} - ${cartItem.food.price}");
  if (cartItem.selectedAddons.isEmpty) {
    receipt.writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
  }
  receipt.writeln('');
  }
  receipt.writeln('________');
  receipt.writeln("");
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrise(getTotalPrice())}");
  return receipt.toString();
  }
  // format numbers into money
  String _formatPrise(double price){
    return "\$ ${price.toStringAsFixed(2)}";
  }
  // format addons into string summary
  String _formatAddons(List<Addons> addons) {
    return addons.map((e) => "${e.name} (${_formatPrise(e.price)})").join(", ");
  }
}
