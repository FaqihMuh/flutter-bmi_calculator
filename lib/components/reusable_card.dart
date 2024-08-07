//import 'dart:ui';

//import 'package:flutter/cupertino.dart';
//import '../screens/input_page.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colorCard;
  final Widget cardChild;
  final Function() onPress;
  ReusableCard(
      {required this.colorCard,
      required this.cardChild,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
