import 'package:flutter/material.dart';
import 'package:food_delivery/components/buttons.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

import '../components/My_Cart_tile.dart';
import '../models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurants>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.card;
        // Scaffold UI
        return Scaffold(
          appBar: AppBar(
              title: const Text('Cart'),
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [ //cart clear button
            IconButton(onPressed: (){
              showDialog(context: context, builder: (context) =>  AlertDialog(
                title: const Text('Are you sure you want to clear the cart?'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context) , child: const Text('Cancel')),
                  // confirm
                  TextButton(onPressed: () => { Navigator.pop(context),restaurant.clearCard() }, child: const Text('Yes'))
                ],
              ));
            }, icon: const Icon(Icons.clear))

          ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // instead of blank page
                    userCart.isEmpty? const Expanded(child: Center(child: Text("the Cart is empty",
                      style: TextStyle(fontSize: 20),))):
                        //List of cart
                    Expanded(
                        child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              //get individual cart item
                              final cartitem =  userCart[index];
                              //return cart tile UI
                             return MyCartTile(cartitem: cartitem);
                            })),
                     MyButton(
                    onTape: () => Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage())
                    )
                    ,text: "Go to checkout"),
                    const SizedBox(height: 25,)
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
