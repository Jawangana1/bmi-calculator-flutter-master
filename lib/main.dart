import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF101338)),
        scaffoldBackgroundColor: Color(0xFF101338),
        //primaryColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReuseableCard( colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReuseableCard( colour: Color(0xFF1D1E33), ),
                ),
              ],
            ),
            Expanded(
              child: ReuseableCard(
                colour: Color(0xFF1D1E33),
              )
            ),
            Row(
              children: [
                Expanded(
                  child: ReuseableCard( colour: Color(0xFF1D1E33),)
                ),
                Expanded(
                  child: ReuseableCard( colour: Color(0xFF1D1E33),)
                ),
              ],
            ),
          ]),
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  
  Color colour;
  
  ReuseableCard({ @required this.colour});
  

  @override
  Widget build(BuildContext context) {
    return Container(
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
