import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isActice,
    required this.press,
  });

  final Color color;
  final bool isActice;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
            border:
                Border.all(color: isActice ? primaryColor : Colors.transparent),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
