import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  Color colour;
  Widget childWidget;
  Function gestureDectection;

  ReuseableCard(
      {@required this.colour, this.childWidget, this.gestureDectection});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDectection,
      child: Container(
        child: childWidget,
        height: 170,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
