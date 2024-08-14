import 'package:flutter/material.dart';

ThemeData lightMod = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade700
  )
);

// example of usage: ( color: Theme.of(context).colorScheme.secondary, )