class CartItem {
  final String title;
  final String imageUrl;
  final double price;

  CartItem({required this.title, required this.imageUrl, required this.price});
}

class Cart {
  final List<CartItem> items = [];

  void addToCart(CartItem item) {
    items.add(item);
  }

  void removeFromCart(CartItem item) {
    items.remove(item);
  }

  int get itemCount => items.length;
}
