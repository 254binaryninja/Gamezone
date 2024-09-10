import 'package:flutter/material.dart';
import 'package:gamezone/adapters/ui/screens/settings.dart';
import 'package:gamezone/adapters/ui/widgets/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          //App logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.gamepad_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(),
          ),
          //Home screen
          MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          //Settings
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),
          const Spacer(),
          //Logout
          MyDrawerTile(
              text: "L O G O U T", icon: Icons.logout_sharp, onTap: () {}),
          const SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }
}
