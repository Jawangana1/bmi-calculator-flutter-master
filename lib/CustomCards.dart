import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  Color colour;
  Widget childWidget;

  ReuseableCard({@required this.colour, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      height: 170,
      //width: 10,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}