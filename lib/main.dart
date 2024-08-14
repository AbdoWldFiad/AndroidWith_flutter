import 'package:flutter/material.dart';
import 'package:food_delivery/auth/Login_or_register.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/theme_Provider.dart';
import 'package:provider/provider.dart';
//https://www.youtube.com/watch?v=rHIFJo4IbOE Source to min. 1:32:00 that left is the firebase

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    // theme provider
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    //restaurant provider
    ChangeNotifierProvider(create: (context) => Restaurants()),
  ],
    child:const MyApp(),
  )
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: const LoginOrRegister(),
        theme: Provider.of<ThemeProvider>(context).themeData
    );
  }
}

