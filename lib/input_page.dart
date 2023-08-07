import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  Gender? selectedGender;
  int height = 180;

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
                    child: ReusableCard(
                      selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild:
                          const IconContent(FontAwesomeIcons.mars, 'Male'),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      selectedGender == Gender.Female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild:
                          const IconContent(FontAwesomeIcons.venus, 'Female'),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Center(
                      child: Text(
                        'Height',
                        style: kLabelText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelText,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                          print(newValue);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(kInActiveCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(kInActiveCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
        );
  }
}
