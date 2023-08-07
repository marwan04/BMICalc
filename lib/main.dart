import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
          color: Color(0xff0a0e21),
        ),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      // theme: ThemeData(
      //   primaryColor: const Color(0xff0a0e21),
      //   scaffoldBackgroundColor: const Color(0xff0a0e21),
      //   appBarTheme: const AppBarTheme(
      //     color: Color(0xff0a0e21),
      //   ),
      //   textTheme:const TextTheme(
      //     bodyText2: TextStyle(color: Colors.white),
      //   ),
      // ).copyWith(
      //   colorScheme: ThemeData().colorScheme.copyWith(
      //         secondary: const Color(0xff0a0e21),
      //       ),
      // ),
      home: InputPage(),
    );
  }
}

