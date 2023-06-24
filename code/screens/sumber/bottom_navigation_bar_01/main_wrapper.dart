import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'controller/main_wrapper_controller.dart';
import 'utils/color_constants.dart';
import 'view/cart_tab.dart';
import 'view/home_tab.dart';
import 'view/profile_tab.dart';
import 'view/stitistics_tab.dart';
import 'package:get/get.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final MainWrapperController controller = Get.put(MainWrapperController());

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
        actions: [
          Switch.adaptive(
            value: controller.isDarkTheme.value,
            onChanged: (newValue) {
              controller.isDarkTheme.value = newValue;
              controller.gantiTema(newValue ? ThemeMode.dark : ThemeMode.light);
            },
          )
        ],
      ),
      body: PageView(
        onPageChanged: controller.animatedToTab,
        controller: controller.pageController,
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
          child: Obx(
            () => Row(
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
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: controller.currentPage.value == page
                  ? ColorConstants.appColors
                  : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: controller.currentPage.value == page
                    ? ColorConstants.appColors
                    : Colors.grey,
                fontSize: 13,
                fontWeight: controller.currentPage.value == page
                    ? FontWeight.w600
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
