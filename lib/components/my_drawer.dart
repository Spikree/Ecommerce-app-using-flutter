import 'package:ecom_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header: logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(
                height: 25,
              ),

              // shop tile
              MyListTile(text: 'Shop', icon: Icons.home, onTap: () {}),

              // cart tile
              MyListTile(
                  text: 'My cart', icon: Icons.shopping_cart, onTap: () {}),
            ],
          ),

          // exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(text: 'Exit', icon: Icons.logout, onTap: () {}),
          )
        ],
      ),
    );
  }
}