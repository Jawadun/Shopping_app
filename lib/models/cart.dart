import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('\$${price.toStringAsFixed(2)}'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onAddToCart,
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
