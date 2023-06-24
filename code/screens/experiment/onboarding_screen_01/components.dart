import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/colors.dart';

class GetStartBTN extends StatelessWidget {
  const GetStartBTN({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 60),
        width: size.width / 1.5,
        height: size.height / 13,
        decoration: BoxDecoration(
          color: MyColors.btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "Yuk Belanja!",
            style: textTheme.headline4,
          ),
        ),
      ),
    );
  }
}

class SkipBTN extends StatelessWidget {
  const SkipBTN({
    super.key,
    required this.size,
    required this.textTheme,
    required this.onTap,
  });

  final Size size;
  final TextTheme textTheme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      width: size.width / 1.5,
      height: size.height / 13,
      decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.btnBorderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        splashColor: MyColors.btnBorderColor,
        child: Center(
          child: Text(
            "Skip",
            style: textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
