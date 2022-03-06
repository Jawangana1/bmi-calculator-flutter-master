import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CustomCards.dart';
import 'CustomIcons.dart';
import 'Constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF101338)),
        scaffoldBackgroundColor: Colors.black38,
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

class _InputPageState extends State<InputPage> {
  //Color maleCardColor = inactiveCardColour;
  //Color femaleCardColor = inactiveCardColour;
  int height = 180;

  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  gestureDectection: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  colour: selectedGender == GenderType.male
                      ? reusableCardColour
                      : inactiveCardColour,
                  childWidget: twoReuseableIcons(FontAwesomeIcons.mars, "MALE"),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  gestureDectection: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  colour: selectedGender == GenderType.female
                      ? reusableCardColour
                      : inactiveCardColour,
                  childWidget:
                      twoReuseableIcons(FontAwesomeIcons.venus, 'FEMALE'),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReuseableCard(
              colour: reusableCardColour,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.ideographic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFFBDBE98),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 35,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  colour: reusableCardColour,
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: reusableCardColour,
                ),
              ),
            ],
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ]),
      ),
    );
  }
}
