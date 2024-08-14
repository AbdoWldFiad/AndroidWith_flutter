import 'package:flutter/material.dart';

import '../models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onincrease;
  final VoidCallback ondecrease;
  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onincrease,
      required this.ondecrease});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 200, // or any width that fits your layout
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context).colorScheme.background),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ondecrease
          GestureDetector(
              onTap: ondecrease,
              child: Icon(Icons.remove,
                  size: 20, color: Theme.of(context).colorScheme.primary)),
          // quantity count
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(child: Text(quantity.toString()))),
          // onincrease
          GestureDetector(
              onTap: onincrease,
              child: Icon(Icons.add,
                  size: 20, color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
