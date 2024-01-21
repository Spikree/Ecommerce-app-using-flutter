import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Product image
          Icon(Icons.favorite),

          //product name
          Text(product.name),

          //product description
          Text(product.description),

          //price + add to cart button
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
