import 'package:flutter/material.dart';

class DetailCardText extends StatelessWidget {
  final String text;
  final bool isTitle;

  const DetailCardText({
    Key? key,
    required this.text,
    this.isTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        text,
        style: isTitle ? Theme.of(context).textTheme.headline1 : null,
      ),
    );
  }
}
