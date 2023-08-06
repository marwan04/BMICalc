import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender {Male , Female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  Gender? selectedGender;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.Male) {
  //     if (maleCardColor == activeCardColor){
  //       maleCardColor = inActiveCardColor;
  //     }
  //     else {
  //       maleCardColor = activeCardColor;
  //     }
  //     if(femaleCardColor == activeCardColor){
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  //   if (gender == Gender.Female) {
  //     if (femaleCardColor == activeCardColor){
  //       femaleCardColor = inActiveCardColor;
  //     }
  //     else {
  //       femaleCardColor = activeCardColor;
  //     }
  //     if(maleCardColor == activeCardColor){
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      child: ReusableCard(
                        selectedGender == Gender.Male ? activeCardColor : inActiveCardColor,
                        cardChild:const IconContent(FontAwesomeIcons.mars, 'Male'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      child: ReusableCard(
                        selectedGender == Gender.Female ? activeCardColor : inActiveCardColor,
                        cardChild: const IconContent(FontAwesomeIcons.venus, 'Female'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ReusableCard(inActiveCardColor),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(inActiveCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(inActiveCardColor),
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
