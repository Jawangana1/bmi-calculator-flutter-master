import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class twoReuseableIcons extends StatelessWidget {
  final IconData icondata;
  final String iconText;

  twoReuseableIcons(this.icondata, this.iconText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondata,
          size: 70,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: TextStyle(
            color: Color(0xFF808E98),
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
