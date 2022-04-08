import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.press});

  final IconData icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 14,
        color: Color(0xFFEDEDED),
      ),
      onPressed: press,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF56CFDB),
      splashColor: Color(0xFF4DBAC5),
    );
  }
}
