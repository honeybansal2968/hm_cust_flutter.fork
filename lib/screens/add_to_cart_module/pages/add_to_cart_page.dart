import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartPage extends StatelessWidget {
  const AddToCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        title: const Text('Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text(
              'Your Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemTile(cartItem: cartItems[index]);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Proceed to checkout or perform other actions
              },
              child: const Text('Proceed to Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String name;
  final String description;
  final double price;

  CartItem(
      {required this.name, required this.description, required this.price});
}

final List<CartItem> cartItems = [
  CartItem(
    name: 'Basic Oil Change',
    description: 'Engine oil change and filter replacement',
    price: 29.99,
  ),
  CartItem(
    name: 'Tire Rotation',
    description: 'Rotate and balance all four tires',
    price: 19.99,
  ),
  // Add more cart items
];

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;

  const CartItemTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cartItem.name),
      subtitle: Text(cartItem.description),
      trailing: Text('\$${cartItem.price.toStringAsFixed(2)}'),
    );
  }
}
