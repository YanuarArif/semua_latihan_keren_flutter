import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'view/validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Email Validator',
      home: MainPage(),
    );
  }
}

// sumber materi https://youtu.be/r8a-4kaoqjE
// repo github https://github.com/AmirBayat0/Email-Validator-with-RegExp-in-Flutter
// packages //? 1. validators