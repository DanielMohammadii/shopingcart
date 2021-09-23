import 'package:flutter/material.dart';
import 'package:shopingcart_flutter_firestore/screens/cart_screen.dart';
import 'package:shopingcart_flutter_firestore/widgets/catalog_widget.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CatalogPage'),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            CatalogWidet(),
            FloatingActionButton.extended(
              onPressed: () {
                Get.to(() => CartScreen());
              },
              label: Text('CartScreen'),
            )
          ],
        ),
      )),
    );
  }
}
