import 'package:flutter/material.dart';

import '../pages/SettingsPage.dart';
import 'Drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
              padding: const EdgeInsets.only(top: 68.0),
              child: Icon(
                Icons.lock_open_sharp,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list tile
          MyDrawerTile(
              text: 'H O M E ',
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          // settings list tile
          const SizedBox(height: 10),
          MyDrawerTile(
              text: 'S E T T I N G S ',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),
          // logout list tile
          const Spacer(),
          MyDrawerTile(
              text: 'L O G OU T ', icon: Icons.logout_rounded, onTap: () {}),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
