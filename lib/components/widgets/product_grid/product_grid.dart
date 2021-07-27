import 'package:al_eccom/components/widgets/product_grid/element/product_grid_element.dart';
import 'package:al_eccom/models/product.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List products;
  final Function updateState;

  const ProductGrid({
    Key? key,
    required this.products,
    required this.updateState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final product = Product.fromMap(products[index]);
        return ProductGridElement(
          product: product,
          updateState: updateState,
        );
      },
      itemCount: products.length,
    );
  }
}
