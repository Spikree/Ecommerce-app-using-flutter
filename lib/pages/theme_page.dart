import 'package:ecom_app/components/my_drawer.dart';
import 'package:flutter/material.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    void Themes(String color) {
      if (color == "white") {
      } else if (color == "black") {}
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Themes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const MyDrawer(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text(
                  "white",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text(
                  "Dark",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
