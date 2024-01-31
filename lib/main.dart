import 'package:ecom_app/models/shop.dart';
import 'package:ecom_app/pages/cart_page.dart';
import 'package:ecom_app/pages/intro_page.dart';
import 'package:ecom_app/pages/shop_page.dart';
import 'package:ecom_app/themes/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/theme_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

ThemeData backgroundTheme = darkMode;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: backgroundTheme,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/theme_page': (context) => const Themes(),
      },
    );
  }
}

//23:03
