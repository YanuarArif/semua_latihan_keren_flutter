import 'package:flutter/material.dart';

import '../animation/fade_animation.dart';
import '../utils/my_strings.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          MyStrings.logoText,
          style: textTheme.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
