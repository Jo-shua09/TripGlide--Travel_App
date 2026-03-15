import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/features/auth/widgets/trip_card.dart';
import 'package:travel_app/features/home/controllers/home_controller.dart';
import 'package:travel_app/features/search/view/search_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Inject the controller
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //?? User Profile Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Vanessa',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Welcome to TripGlide',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      //?? Handle profile tap
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              //?? Search Bar
              const SizedBox(height: 14),
              SearchScreen(),

              const SizedBox(height: 16),
              const Text(
                'Select your next trip',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),

              //?? Trip Categories
              _tripsCategoryList(),
              const SizedBox(height: 14),

              //?? Scrollable Trip Cards
              Expanded(child: TripCardSwiper()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tripsCategoryList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              final category = controller.categories[index];

              return Obx(() {
                bool isSelected = controller.selectedCategory.value == category;

                return GestureDetector(
                  onTap: () => controller.filterByCategory(category),
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        category,
                        style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.w700,
                          color: isSelected ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ],
    );
  }
}
