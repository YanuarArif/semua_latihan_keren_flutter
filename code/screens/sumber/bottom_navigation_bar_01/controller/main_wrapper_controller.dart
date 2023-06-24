import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWrapperController extends GetxController {
  late PageController pageController;

  /// Variable untuk mengubah index dari Bottom AppBar
  RxInt currentPage = 0.obs;

  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;
  RxBool isDarkTheme = false.obs;

  void gantiTema(ThemeMode newMode) {
    Get.changeThemeMode(newMode);
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animatedToTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
