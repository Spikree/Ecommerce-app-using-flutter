// ignore_for_file: non_constant_identifier_names

import 'dart:core';

import 'package:ecom_app/models/product.dart';

class Shop {
  // products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description",
      //imagePath: imagePath,
    ),
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item description",
      //imagePath: imagePath,
    ),
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item description",
      //imagePath: imagePath,
    ),
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item description",
      //imagePath: imagePath,
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
  }

  // remove item from catt
  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
