import 'package:ecom_app/models/shop.dart';
import 'package:ecom_app/models/themeData.dart';
import 'package:ecom_app/pages/cart_page.dart';
import 'package:ecom_app/pages/intro_page.dart';
import 'package:ecom_app/pages/shop_page.dart';
import 'package:ecom_app/themes/dark_mode.dart';
import 'package:ecom_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/theme_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Shop()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

ThemeData getBackgroundTheme(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
  return themeProvider.selectedColor == "white" ? lightMode : darkMode;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: getBackgroundTheme(context),
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
