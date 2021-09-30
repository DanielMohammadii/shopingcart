import 'package:flutter/material.dart';
import 'package:shopingcart_flutter_firestore/widgets/cart_product.dart';
import 'package:shopingcart_flutter_firestore/widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CartScreen'),
      ),
      body: SafeArea(
          child: Container(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CartProduct(),
              CartTotal(),
            ],
          ),
        ),
      )),
    );
  }
}
