import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'utils/my_colors.dart';
import 'view/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Error Page 404",
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.w500,
        ),
        headline2: TextStyle(
          fontSize: 80,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 27,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 18,
          color: MyColors.mainSubTitleColor,
          fontWeight: FontWeight.w400,
        ),
        headline5: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      )),
      home: const FirstScreen(),
    );
  }
}

// sumber materi https://youtu.be/3spl9jZ79DU
// repo github https://github.com/AmirBayat0/Flutter-Page-404-error-UI
// packages //? 1. simple_animations: ^4.0.1, 2 (versi terbaru error/ganti parameter). supercharged
