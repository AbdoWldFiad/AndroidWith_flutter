import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
              title: const Text('Your Location'),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search address"),
              ),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
            child: const Text("Cancle"),
            ),
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Save"),
            ),
          ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delver Now",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //Address
                Text("Elmalaha Str.",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
                // drop down menu
                const Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          )
        ],
      ),
    );
  }
}

// example of usage:                 const MyCurrentLocation(),
