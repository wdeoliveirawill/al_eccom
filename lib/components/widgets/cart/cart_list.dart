import 'package:al_eccom/main.dart';
import 'package:al_eccom/models/cart_item.dart';
import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  final Function updateState;

  const CartList({
    Key? key,
    required this.updateState,
  }) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        CartItem cartItem = HomePage.cartItens[index];
        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(
                      "assets/images/${cartItem.product.photo}",
                    ),
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItem.product.title,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${cartItem.product.formattedPrice}"),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cartItem.quantity--;
                                    if (cartItem.quantity <= 0) {
                                      HomePage.cartItens.remove(cartItem);
                                    }
                                    widget.updateState();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.remove, size: 14),
                                  ),
                                ),
                                Text("${cartItem.quantity}"),
                                GestureDetector(
                                  onTap: () {
                                    cartItem.quantity++;
                                    widget.updateState();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.add, size: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: HomePage.cartItens.length,
    );
  }
}
