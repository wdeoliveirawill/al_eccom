import 'package:al_eccom/components/widgets/app_bar.dart';
import 'package:al_eccom/components/widgets/cart/cart_list.dart';
import 'package:al_eccom/main.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: "Carrinho",
        showCartButton: false,
      ),
      body: buildPage(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "TOTAL",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _calcTotalCart(),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }

  updateState() {
    setState(() {});
  }

  String _calcTotalCart() {
    if (HomePage.cartItens.isNotEmpty) {
      int result = HomePage.cartItens
          .map((cartItem) => cartItem.product.price * cartItem.quantity)
          .reduce((actualPrice, newPrice) => actualPrice + newPrice);
      return "R\$$result,00";
    }
    return "R\$0,00";
  }

  Widget buildPage() {
    if (HomePage.cartItens.isNotEmpty) {
      return CartList(updateState: updateState);
    }
    return Container(
      child: Text("Nenhum Item no carrinho!"),
      height: double.infinity,
      alignment: Alignment.center,
    );
  }
}
