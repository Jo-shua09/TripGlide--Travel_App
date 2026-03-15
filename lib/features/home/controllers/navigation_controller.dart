import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/features/home/view/home_screen.dart';
import 'package:travel_app/features/favorites/view/favorites_screen.dart';
import 'package:travel_app/features/profile/view/profile_screen.dart';
import 'package:travel_app/features/settings/view/settings_screen.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> get screens => [
    HomeScreen(),
    FavoritesScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];
}
