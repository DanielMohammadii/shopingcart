import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopingcart_flutter_firestore/models/productmodel.dart';

class ProductController extends GetxController {
  var _products = {}.obs;

  void addproduct(Product products) {
    if (_products.containsKey(products)) {
      _products[products] += 1;
    } else {
      _products[products] = 1;
    }
    Get.snackbar(
      'Product Added',
      " ${products.name} added",
      colorText: Colors.white,
      backgroundColor: Colors.black,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void removeproduc(Product products) {
    if (_products.containsKey(products) && _products[products] == 1) {
      _products.removeWhere((key, value) => key == products);
    } else {
      _products[products] -= 1;
    }
  }

  get products => _products;

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
