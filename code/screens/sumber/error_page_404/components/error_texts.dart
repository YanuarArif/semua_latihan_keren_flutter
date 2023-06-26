import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animation/fade_animation.dart';
import '../utils/my_strings.dart';

class ErrorTexts extends StatelessWidget {
  const ErrorTexts({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeAnimation(
          delay: 2.5,
          child: Text(
            MyStrings.error404Text,
            style: textTheme.headline2,
          ),
        ),
        FadeAnimation(
          delay: 2,
          child: Text(
            MyStrings.errorText,
            style: textTheme.headline3,
          ),
        )
      ],
    );
  }
}
