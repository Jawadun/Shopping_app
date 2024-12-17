import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'title': 'T-Shirt', 'imageUrl': 'assets/image/Tshirt.png', 'price': 20.0},
    {'title': 'Shoes', 'imageUrl': 'assets/image/Shoes.png', 'price': 50.0},
    {'title': 'Bag', 'imageUrl': 'assets/image/bag.png', 'price': 100.0},
    {'title': 'Jacket', 'imageUrl': 'assets/image/jacket.png', 'price': 150.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            title: products[index]['title'],
            imageUrl: products[index]['imageUrl'],
            price: products[index]['price'],
          );
        },
      ),
    );
  }
}
