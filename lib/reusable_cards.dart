import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({required this.color, required this.card, this.press});

  final Color color;
  final Widget card;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: card,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.125),
              // spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(4, 6), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
