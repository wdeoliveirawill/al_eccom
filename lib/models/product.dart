import 'dart:convert';

import 'package:intl/intl.dart';

class Product {
  final currencyFormat = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: "R\$",
  );

  String title;
  String photo;
  String description;
  int price;

  Product({
    required this.title,
    required this.photo,
    required this.description,
    required this.price,
  });

  get formattedPrice => currencyFormat.format(this.price);

  @override
  String toString() {
    return 'Product(title: $title, photo: $photo, description: $description, price: $price)';
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'photo': photo,
      'description': description,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'],
      photo: map['photo'],
      description: map['description'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
