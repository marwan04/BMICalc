import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(this.c, {super.key, this.cardChild , this.onPress});
  final Color c;
  final Widget? cardChild;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}