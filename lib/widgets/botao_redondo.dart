import 'package:deulag/constants.dart';
import 'package:flutter/material.dart';

class BotaoRedondo extends StatelessWidget {
  final String text;
  final double radious;
  final Function press;
  final Color color;
  const BotaoRedondo(
      {Key key, this.text, this.radious = 29, this.press, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
