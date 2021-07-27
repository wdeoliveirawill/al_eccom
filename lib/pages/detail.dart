import 'package:al_eccom/components/widgets/product_detail/card.dart';
import 'package:al_eccom/main.dart';
import 'package:al_eccom/models/cart_item.dart';
import 'package:flutter/material.dart';

import 'package:al_eccom/components/widgets/app_bar.dart';
import 'package:al_eccom/models/product.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/${widget.product.photo}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: '',
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 200,
            child: CardDetail(
              product: widget.product,
              updatePage: _updateState,
            ),
          ),
        ),
      ),
    );
  }

  _updateState() {
    this.setState(() {});
  }
}
