class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
    );
  }
}
