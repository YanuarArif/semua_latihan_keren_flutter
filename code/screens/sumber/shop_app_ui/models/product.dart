import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      this.bgColor = const Color(0xffefeff2)});
}

List<Product> contoh_product = [
  Product(
    image: 'code/screens/sumber/shop_app_ui/assets/images/product_0.png',
    title: 'Long Sleeve Shirts',
    price: 165,
    bgColor: Color(0xfffefbf9),
  ),
  Product(
    image: 'code/screens/sumber/shop_app_ui/assets/images/product_1.png',
    title: 'Casual Henley Shirts',
    price: 99,
    bgColor: Color(0xfffefbf9),
  ),
  Product(
    image: 'code/screens/sumber/shop_app_ui/assets/images/product_2.png',
    title: 'Curved Hem Shirts',
    price: 180,
    bgColor: Color(0xfffefbf9),
  ),
  Product(
    image: 'code/screens/sumber/shop_app_ui/assets/images/product_3.png',
    title: 'Casual Nolin',
    price: 149,
    bgColor: Color(0xfffefbf9),
  ),
];
