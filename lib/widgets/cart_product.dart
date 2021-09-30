import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopingcart_flutter_firestore/controler/productcontroler.dart';
import 'package:shopingcart_flutter_firestore/models/productmodel.dart';

class CartProduct extends StatelessWidget {
  final ProductController controller = Get.find();
  CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCard(
              productController: controller,
              products: controller.products.keys.toList()[index],
              quantity: controller.products.values.toList()[index],
              index: index,
            );
          }),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final ProductController productController;
  final Product products;
  final int quantity;
  final int index;

  const CartProductCard({
    Key? key,
    required this.productController,
    required this.products,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(products.imageurl),
          ),
          SizedBox(height: 20),
          Expanded(child: Text(products.name)),
          IconButton(
              onPressed: () {
                productController.removeproduc(Product.products[index]);
              },
              icon: Icon(Icons.remove_circle)),
          Text('$quantity'),
          IconButton(
              onPressed: () {
                productController.addproduct(Product.products[index]);
              },
              icon: Icon(Icons.add_circle)),
        ],
      ),
    );
  }
}
