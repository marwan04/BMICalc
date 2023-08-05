import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent(this.icon, this.str, {super.key});

  final IconData icon;
  final String str;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          str,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
