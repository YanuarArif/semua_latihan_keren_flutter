import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Items {
  final Widget img;
  // final String img;
  final String title;
  final String subTitle;

  ///
  Items({required this.img, required this.title, required this.subTitle});
}

List<Items> listOfItems = [
  Items(
    // img: "code/screens/sumber/onboarding_screen_01/images/1.png",
    img: Lottie.asset("assets/lottie/phone-repair.json"),
    title: "Service Cepat & Akurat",
    subTitle:
        "Ditangani oleh teknisi\nberpengalaman bertahun-tahun\ndi dalam bidang perservisan",
  ),
  Items(
    // img: "code/screens/sumber/onboarding_screen_01/images/2.png",
    img: Lottie.asset("assets/lottie/saving.json"),
    title: "Harga Terbaik",
    subTitle:
        "Jangan takut uang\nhabis, karena kami selalu\nmemberi layanan dengan harga terbaik",
  ),
  Items(
    // img: "code/screens/sumber/onboarding_screen_01/images/3.png",
    img: Lottie.asset("assets/lottie/garansi.json"),
    title: "Garansi 7 hari",
    subTitle:
        "Sebagai tanggungjawab kami\nkepada konsumen, kami menyediakan\nFree Garansi selama 7 hari",
  ),
];
