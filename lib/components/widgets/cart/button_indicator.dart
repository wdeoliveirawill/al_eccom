import 'package:al_eccom/main.dart';
import 'package:flutter/material.dart';

class ButtonIndicator extends StatelessWidget {
  const ButtonIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        "${HomePage.cartItens.length}",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }
}
