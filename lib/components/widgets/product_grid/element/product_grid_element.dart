import 'package:al_eccom/components/widgets/product_grid/element/element_degrade.dart';
import 'package:al_eccom/components/widgets/product_grid/element/element_image.dart';
import 'package:al_eccom/components/widgets/product_grid/element/element_title.dart';
import 'package:al_eccom/models/product.dart';
import 'package:al_eccom/pages/detail.dart';
import 'package:flutter/material.dart';

class ProductGridElement extends StatefulWidget {
  final Product product;
  final Function updateState;

  const ProductGridElement({
    Key? key,
    required this.product,
    required this.updateState,
  }) : super(key: key);

  @override
  _ProductGridElementState createState() => _ProductGridElementState();
}

class _ProductGridElementState extends State<ProductGridElement> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              product: widget.product,
            ),
          ),
        ).then((value) {
          widget.updateState();
        });
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            color: Colors.grey,
          )
        ]),
        margin: EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ElementImage(image: widget.product.photo),
              ElementDegrade(),
              ElementTitle(title: widget.product.title),
            ],
          ),
        ),
      ),
    );
  }
}
