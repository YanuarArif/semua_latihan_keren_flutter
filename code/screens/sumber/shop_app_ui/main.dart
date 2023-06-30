import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/home/home_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Latihan Shop UI',
      theme: ThemeData(
        scaffoldBackgroundColor:
            bgColor, // properti scaffoldBackgroundColor untuk mengatur semua warna background di aplikasi
        /* sedangkan backgroundColor mengatur warna latar belakang secara spesifik untuk widget tertentu. */
        primarySwatch: Colors.blue,
        fontFamily: 'Gordita',
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// sumber materi https://youtu.be/Q67qNgSVVpA
// repo github https://github.com/abuanwar072/Flutter-Shop-UI-Kit
// packages //? 1. flutter_svg