import 'package:flutter/material.dart';
import 'package:food_delivery/components/buttons.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addons,bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    // initialise selected addons to be false
    for (Addons addon in food.availableAddons){
      selectedAddons[addon] = false;
  }}

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // add to card method
  void addToCard(Food food, Map<Addons, bool> selectedAddons) {
    // go back to the menu
    Navigator.pop(context);
    // format the addons
    List<Addons> currantlyselectedAddons =[];
    for (Addons addon in widget.food.availableAddons){
      if (widget.selectedAddons[addon] == true){
        currantlyselectedAddons.add(addon);
      }
    }
    context.read<Restaurants>().addToCard(food, currantlyselectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    Scaffold(// you can use appBar: AppBar(), for the back arrow , but i will use this as a good trice
    body: SingleChildScrollView(
    child: Column(
    children: [
    // food.image
    Image.asset(widget.food.imagePath),
    Padding(                                                           // how the f**k this works??
    padding: const EdgeInsets.all(25.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // food.name
    Text(
    widget.food.name,
    style: const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 20),
    ),
    // food.prise
    const SizedBox(height: 10),
    Text("\$${widget.food.price}",
    style: TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: 16)),
    // food.description
    Text(widget.food.descrebtion,
    style: const TextStyle(fontSize: 16)),
    const SizedBox(height: 10),
    Divider(color: Theme.of(context).colorScheme.secondary),
    const SizedBox(height: 10),
    Text("Add-ons",
    style: TextStyle(
    color: Theme.of(context).colorScheme.inversePrimary,
    fontSize: 16,
    fontWeight: FontWeight.bold)),
    const SizedBox(height: 20),
    // food.addons
    Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Theme.of(context).colorScheme.secondary),
    borderRadius: BorderRadius.circular(8)),
    child: ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: widget.food.availableAddons.length,
    itemBuilder: (context, index) {
    // get individual addon
    Addons addon = widget.food.availableAddons[index];
    // return Checkbox UI
    return CheckboxListTile(
    value: widget.selectedAddons[addon],
    title: Text(addon.name),
    subtitle: Text("\$${addon.price}",
    style: TextStyle(
    color:
    Theme.of(context).colorScheme.primary)),
    onChanged: (bool? value) {
    setState(() {
    widget.selectedAddons[addon] = value!;
    });
    });
    }),
    )
    // add to card
    ],
    ),
    ),
    //button -> Add to card
    MyButton(
    onTape: () => addToCard(widget.food, widget.selectedAddons)
    ,text: "Add to card"),
    const SizedBox(height: 25),
    ],
    ),
    )),
        SafeArea(child: Opacity(opacity: 0.6,child:Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle),
          child:  IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context),
          ),
        )
          ,))
      ],
    );
  }
}
