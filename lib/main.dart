import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFEB1555),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        // appBarTheme: AppBarTheme(
        //   color: Color(0xFF0A0D22),
        // ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Color(0xFF111428),
        ),
      ),
      //home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage(
              bmiResult: '',
              interpretation: '',
              resultText: '',
            ),
      },
    );
  }
}
