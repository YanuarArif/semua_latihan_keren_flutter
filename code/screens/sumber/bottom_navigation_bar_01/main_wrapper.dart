import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'view/cart_tab.dart';
import 'view/home_tab.dart';
import 'view/profile_tab.dart';
import 'view/stitistics_tab.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Bottom AppBar Example",
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          HomeTab(),
          CartTab(),
          StatisticsTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(context,
                  icon: IconlyLight.home, page: 0, label: "Home"),
              _bottomAppBarItem(context,
                  icon: IconlyLight.wallet, page: 1, label: "Wallet"),
              _bottomAppBarItem(context,
                  icon: IconlyLight.chart, page: 2, label: "Stats"),
              _bottomAppBarItem(context,
                  icon: IconlyLight.profile, page: 3, label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
