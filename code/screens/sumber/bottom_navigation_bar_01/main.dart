import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import './utils/themes.dart';
import './main_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom Appbar',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.light,
      home: MainWrapper(),
    );
  }
}

// sumber materi https://www.youtube.com/watch?v=laORUCEJAiw&t=23s
// repo github https://github.com/AmirBayat0/Flutter_examples
// butuh packages //? 1. iconly, 2. zoom_tap_animation, 3. get