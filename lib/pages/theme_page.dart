import 'package:ecom_app/components/my_drawer.dart';
import 'package:ecom_app/models/themeData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Themes",
          style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.w500),
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
                onPressed: () {
                  themeProvider.setThemeColor("white");
                },
                child: Text(
                  "white",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: style,
                onPressed: () {
                  themeProvider.setThemeColor("black");
                },
                child: Text("Dark",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
