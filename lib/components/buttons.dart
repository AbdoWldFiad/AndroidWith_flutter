import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTape;
  final String text;


  const MyButton({super.key, this.onTape, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTape,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(18)
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16
            )
          ),
        ),
      ),
    );
  }
}
// example of use:>>  MyButton(text: "Sign in",onTape: Login,),