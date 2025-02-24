import 'package:flutter/material.dart';

class Cart extends StatelessWidget { // Change 'cart' to 'Cart'
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Center(
        child: Text('Your cart is empty'),
      ),
    );
  }
}
