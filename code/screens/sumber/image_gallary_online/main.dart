import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Gallery API Test',
      home: HomeView(),
    );
  }
}

// sumber https://www.youtube.com/watch?v=Eva-T15FS2Y&list=PLvp0ycuLg47a-jwBNPQmvFbv9oJ3B_Cha&index=4&t=62s&pp=gAQBiAQB
// packages 
//? 1. cached_network_image: ^3.2.3
//? 2. dio: ^5.2.1+1
//? 3. flutter_staggered_grid_view: ^0.6.2
//? 4. loading_animation_widget: ^1.2.0+4