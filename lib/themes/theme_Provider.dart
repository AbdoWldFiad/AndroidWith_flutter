import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mod.dart';
import 'package:food_delivery/themes/light_mod.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMod;

  ThemeData get themeData => _themeData;

  bool get isDarkMod => _themeData == darkMod;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void swichTheme(){
    if(_themeData == lightMod){
      themeData = darkMod;
    }else{
      themeData = lightMod;
    }
  }
}
// Needed!! : flutter pop add provider    (in terminal)    <<<
// and implement this!          <<<
//void main() {
//   runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),    <<<
//       child: const MyApp(),
//   ));
// }
//  Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//         home: const LoginOrRegister(),
//         theme: Provider.of<ThemeProvider>(context).themeData   <<<
//     );
//   }

// example of usage:                CupertinoSwitch(
//                     value: Provider.of<ThemeProvider>(context, listen: false)
//                         .isDarkMod,
//                     onChanged: (value) =>
//                         Provider.of<ThemeProvider>(context, listen: false)
//                             .swichTheme()),