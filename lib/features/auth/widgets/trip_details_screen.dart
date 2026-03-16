import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/models/trip_model.dart';
import 'package:travel_app/features/home/controllers/home_controller.dart';

class TripDetailsScreen extends StatelessWidget {
  final Trip trip;
  const TripDetailsScreen(this.trip, {super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: [
          //?? 1. Full-screen Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(trip.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //?? 2. Gradient Overlay for readability
          Positioned(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // ignore: deprecated_member_use
                    Colors.black.withOpacity(0.3),
                    Colors.transparent,
                    Colors.black.withOpacity(0.4),
                  ],
                ),
              ),
            ),
          ),

          //?? 3. Top Action Bar (Back & Favorite)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Obx(
                      () => IconButton(
                        icon: Icon(
                          controller.isFavorite(trip)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: controller.isFavorite(trip)
                              ? Colors.red
                              : Colors.black,
                        ),
                        onPressed: () => controller.toggleFavorite(trip),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //?? 4. The Modern Draggable Bottom Sheet
          DraggableScrollableSheet(
            snap: true,
            snapSizes: [0.35, 0.9],
            initialChildSize: 0.7, //?? Halfway open
            minChildSize: 0.35,
            maxChildSize: 0.9, //?? Almost full screen
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!! Drag Handle
                        Center(
                          child: Container(
                            width: 40,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        //!! Trip Title & Category
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              trip.name,
                              style: const TextStyle(
                                fontFamily: 'InstrumentSans',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.7,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 1,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    trip.rating.toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  trip.country,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  ' ${trip.reviews.toString()} reviews',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          trip.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            //?? see more function
                          },
                          child: const Text(
                            'Read more',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // const Text(
                        //   "Schedule",
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // ...trip.schedule.map(
                        //   (item) => Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 4),
                        //     child: Row(
                        //       children: [
                        //         const Icon(
                        //           Icons.check_circle_outline,
                        //           size: 16,
                        //           color: Colors.green,
                        //         ),
                        //         const SizedBox(width: 8),
                        //         Expanded(
                        //           child: Text(
                        //             item,
                        //             style: const TextStyle(fontSize: 14),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        // const SizedBox(height: 32),
                        // // Book Now Button
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       backgroundColor: Colors.black,
                        //       padding: const EdgeInsets.symmetric(vertical: 18),
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(16),
                        //       ),
                        //     ),
                        //     onPressed: () {},
                        //     child: const Text(
                        //       "Book Now",
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 16,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
