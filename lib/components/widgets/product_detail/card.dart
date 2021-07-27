import 'package:al_eccom/components/widgets/product_detail/card_text.dart';
import 'package:al_eccom/main.dart';
import 'package:al_eccom/models/cart_item.dart';
import 'package:al_eccom/models/product.dart';
import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  final Product product;

  final Function updatePage;

  CardDetail({
    Key? key,
    required this.product,
    required this.updatePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailCardText(
            text: product.title,
            isTitle: true,
          ),
          DetailCardText(text: product.description),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.formattedPrice,
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () {
                    _addCartItem(CartItem(
                      product: product,
                      quantity: 1,
                    ));
                  },
                  child: Text(
                    "Comprar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _addCartItem(CartItem cartItem) {
    int index = HomePage.cartItens
        .indexWhere((item) => item.product == cartItem.product);
    if (index >= 0) {
      HomePage.cartItens[index].quantity++;
    } else {
      HomePage.cartItens.add(cartItem);
    }

    this.updatePage();
  }
}
