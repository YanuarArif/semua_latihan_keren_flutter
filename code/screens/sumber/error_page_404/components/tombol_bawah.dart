import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/my_strings.dart';

class TombolBawah extends StatelessWidget {
  const TombolBawah({
    super.key,
    required this.size,
    required this.textTheme,
    required this.btnColor,
    required this.page,
  });

  final Size size;
  final TextStyle? textTheme;
  final Color btnColor;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => page)));
      },
      minWidth: size.width / 1.2,
      height: size.height / 14,
      color: btnColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Text(
        MyStrings.goHomeText,
        style: textTheme,
      ),
    );
  }
}
