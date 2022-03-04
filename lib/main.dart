import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CustomCards.dart';
import 'CustomIcons.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF101338)),
        //scaffoldBackgroundColor: Color(0xFF101338),
        //primaryColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const reusableCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
const double bottomContainerHeight = 60;



class _InputPageState extends State<InputPage> {
  //Color maleCardColor = inactiveCardColour;
  //Color femaleCardColor = inactiveCardColour;

  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                  setState(() {
                   selectedGender = GenderType.male;
                  });
                },
                  child: ReuseableCard(
                    colour: selectedGender == GenderType.male ? reusableCardColour : inactiveCardColour,
                    childWidget: twoReuseableIcons(
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 50,
                        ),
                        "MALE"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                 onTap: () {
                  setState(() {
                    selectedGender = GenderType.female;
                  });
                },
                  child: ReuseableCard(
                    colour: selectedGender == GenderType.female ? reusableCardColour : inactiveCardColour,
                    childWidget: twoReuseableIcons(
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 50,
                        ),
                        'FEMALE'),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReuseableCard(
              colour: reusableCardColour,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: ReuseableCard(
                colour: reusableCardColour,
              )),
              Expanded(
                  child: ReuseableCard(
                colour: reusableCardColour,
              )),
            ],
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]),
      ),
    );
  }
}
