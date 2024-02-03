// ignore_for_file: non_constant_identifier_names

import 'dart:core';

import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "Glasses",
      price: 99.99,
      description: "Item description more description Rahhh",
      imagePath: 'assets/images/glasses.png',
    ),
    Product(
      name: "Keyboard",
      price: 99.99,
      description: "Item description",
      imagePath: 'assets/images/keyboard.png',
    ),
    Product(
      name: "Shoes",
      price: 99.99,
      description: "Item description",
      imagePath: 'assets/images/shoes.png',
    ),
    Product(
      name: "Watch",
      price: 99.99,
      description: "Item description",
      imagePath: 'assets/images/watch.png',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add items to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from catt
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
