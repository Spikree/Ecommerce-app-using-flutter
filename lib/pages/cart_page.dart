import 'package:ecom_app/components/my_button.dart';
import 'package:ecom_app/components/my_drawer.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // remove item from cart
    void removeItemFromCart(BuildContext context, Product product) {
      // show a dialog box to ask user to confirm to remove from cart
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: const Text("remove this item from your cart?"),
          ),
          actions: [
            // cancle button
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancle"),
            ),

            // yes button
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);

                //add to cart
                context.read<Shop>().removeFromCart(product);
              },
              child: Text("yes"),
            )
          ],
        ),
      );
    }

    // user pressed the pay button
    void payButtonPressed(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text(
              "User wants to pay! connect this app to your payment backend"),
        ),
      );
    }

    // get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Page'),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
                ? const Center(child: const Text("Your cart is empty..."))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // get the individual items in the cart
                      final item = cart[index];

                      // return as a cart tile UI
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => removeItemFromCart(context, item),
                        ),
                      );
                    }),
          ),

          // pay button
          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(
                onTap: () => payButtonPressed(context), child: Text("PAY NOW")),
          )
        ],
      ),
    );
  }
}
