import 'package:ecom_app/components/my_drawer.dart';
import 'package:flutter/material.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Themes",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
    );
  }
}
