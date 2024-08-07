import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.pressed});
  final IconData icon;
  final Function() pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        onPressed: pressed);
  }
}
