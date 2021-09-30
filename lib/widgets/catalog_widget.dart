import 'package:flutter/material.dart';
import 'package:shopingcart_flutter_firestore/controler/productcontroler.dart';
import 'package:shopingcart_flutter_firestore/models/productmodel.dart';
import 'package:get/get.dart';

class CatalogWidet extends StatelessWidget {
  CatalogWidet({Key? key}) : super(key: key);
  final ProductController c = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                trailing: IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    c.addproduct(Product.products[index]);
                  },
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("\$${Product.products[index].price}"),
                ),
                leading: CircleAvatar(
                    radius: 30,
                    child: Image.network(Product.products[index].imageurl)),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(Product.products[index].name),
                ),
              ),
            );
          }),
    );
  }
}
