class Product {
  final String name;
  final double price;
  final String imageurl;
  Product({
    required this.name,
    required this.price,
    required this.imageurl,
  });

  static List<Product> products = [
    Product(
        name: ('Apple'),
        price: 6.3,
        imageurl:
            ("https://image.similarpng.com/very-thumbnail/2020/07/Red-Apple-vector-PNG.png")),
    Product(
        name: ('Cherry'),
        price: 3.8,
        imageurl:
            ("https://images.all-free-download.com/images/graphiclarge/cherry_310477.jpg")),
    Product(
        name: ('Bannan'),
        price: 2.6,
        imageurl:
            ("https://image.similarpng.com/very-thumbnail/2020/06/Banana-vector-transparent-PNG.png")),
  ];
}
