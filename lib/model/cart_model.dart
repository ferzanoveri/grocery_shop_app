import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
//   list of items on sale
  final List shopItems = [
//   [ itemName, itemPrice, imagePath, color ]
    ['Avocado', "4.00", 'assets/avocado.png', Colors.green],
    ['Banana', "12.80", 'assets/avocado.png', Colors.yellow],
    ['Chicken', "9.20", 'assets/avocado.png', Colors.red],
    ['Water', "17.30", 'assets/avocado.png', Colors.blue]
  ];

  // list of cart items
  List cartItems = [];

// get shopItems => _shopItems;

// add item to cart
  void addItemToCart(int index) {
    cartItems.add(shopItems[index]);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(int index) {
    cartItems.remove(shopItems[index]);
    notifyListeners();
  }

// calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
