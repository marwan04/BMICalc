import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(this.c, {super.key, this.cardChild});
  final Color c;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}