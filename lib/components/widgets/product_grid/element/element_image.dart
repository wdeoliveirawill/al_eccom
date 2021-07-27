import 'package:flutter/material.dart';

class ElementImage extends StatelessWidget {
  final String image;

  const ElementImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/$image"),
      ),
    );
  }
}
