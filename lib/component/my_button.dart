import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  double width;
  Color color;
  Color textColor;
  VoidCallback onClilc;
  BorderRadiusGeometry radius;

  MyButton(
      {Key? key,
      required this.width,
      required this.onClilc,
      required this.text,
      required this.color,
      required this.radius,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: radius,
        color: color,
      ),
      child: MaterialButton(
        onPressed: () {
          onClilc();
        },
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
