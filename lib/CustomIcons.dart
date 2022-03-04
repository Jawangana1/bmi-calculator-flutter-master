import 'package:flutter/material.dart';

class twoReuseableIcons extends StatelessWidget {
  final Icon icondata;
  final String iconText;

  twoReuseableIcons(this.icondata, this.iconText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icondata,
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: TextStyle(
            color: Color(0xFF808E98),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}