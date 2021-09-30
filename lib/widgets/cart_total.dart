import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopingcart_flutter_firestore/controler/productcontroler.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);

  final ProductController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Total",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Obx(() => Text(
              '\$${controller.total}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
