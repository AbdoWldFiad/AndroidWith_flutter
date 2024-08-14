import 'package:flutter/material.dart';
import 'package:food_delivery/components/My_quantity_selector.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartitem;
  const MyCartTile({super.key, required this.cartitem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurants>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(cartitem.food.imagePath,
                              height: 150, width: 150),
                        ),
                        const SizedBox(width: 15),
                        // food name and price

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 35),
                            Text(cartitem.food.name),
                            Text('\$${cartitem.food.price}',style: TextStyle(
                              color: Theme.of(context).colorScheme.primary
                            )),
                            SizedBox(height: 10,),
                            // increase or decrease quantity
                            QuantitySelector(
                                quantity: cartitem.quantity,
                                food: cartitem.food,
                                ondecrease: () {
                                  restaurant.removeFromCard(cartitem);
                                },
                                onincrease: () {
                                  restaurant.addToCard(
                                      cartitem.food, cartitem.selectedAddons);
                                })
                          ],
                        ),


                      ],
                    ),
                  ),
                  // addons
                  SizedBox(
                    height: cartitem.selectedAddons.isEmpty? 0:60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                      children: cartitem.selectedAddons.map((addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name),
                              Text('\$${addon.price}')
                            ],
                          ),
                          shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(fontSize: 12,color:Theme.of(context).colorScheme.inversePrimary ),
                        ),
                      )).toList(),
                    ),

                  )
                ],
              ),
            ));
  }
}
