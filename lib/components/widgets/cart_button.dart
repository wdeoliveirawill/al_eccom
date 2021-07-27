import 'package:al_eccom/components/widgets/cart/button_indicator.dart';
import 'package:al_eccom/main.dart';
import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/cart").then((value) {
          setState(() {});
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: buildCartButton(),
      ),
    );
  }

  buildCartButton() {
    final image = Image(
      height: 30,
      image: AssetImage("assets/icons/cart.png"),
    );
    if (HomePage.cartItens.length > 0) {
      return Stack(
        children: [
          image,
          ButtonIndicator(),
        ],
      );
    }
    return image;
  }
}
