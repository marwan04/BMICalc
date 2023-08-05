import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: const Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      Color(0xFF1D1E33),
                      cardChild: IconContent(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Color(0xFF1D1E33),
                      cardChild: IconContent(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                ],
              ),
            )
          ],
        )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
        );
  }
}
