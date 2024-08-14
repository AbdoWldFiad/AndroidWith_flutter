import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
   const MyDrawerTile({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: ListTile(
        title: Text(text,
        style: TextStyle(color:Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(icon,color:Theme.of(context).colorScheme.inversePrimary),
        onTap: onTap,
      ),
    );
  }
}

// example of usage:           MyDrawerTile(
//               text: 'L O G OU T ', icon: Icons.logout_rounded, onTap: () {}),

//          MyDrawerTile(
//               text: 'H O M E ',
//               icon: Icons.home,
//               onTap: () => Navigator.pop(context)),
//           const SizedBox(height: 10),

//           MyDrawerTile(
//               text: 'S E T T I N G S ',
//               icon: Icons.settings,
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const SettingsPage()));
//               }),
