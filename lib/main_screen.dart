import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/features/auth/widgets/navigation_bar_widget.dart';
import 'package:travel_app/features/home/controllers/navigation_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.currentIndex.value]),
      bottomNavigationBar: const NavigationBarWidget(),
      extendBody: true,
    );
  }
}
