import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/models/trip_model.dart';

class UpcomingTourDetailsScreen extends StatelessWidget {
  const UpcomingTourDetailsScreen({
    super.key,
    required this.tourName,
    required this.trip,
  });

  final Trip trip;
  final String? tourName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            // 1. Fixed Header
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          tourName ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'InstrumentSans',
                          ),
                        ),
                        Text(
                          '${trip.days} days ● from \$${trip.price}/person',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'InstrumentSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            // 2. Scrollable Schedule List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: trip.detailedSchedule.length,
                itemBuilder: (context, index) {
                  final schedule = trip.detailedSchedule[index];

                  // This is where you build your custom Accordion/Card for each Day
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            schedule.dayImage,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              schedule.dayTitle,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              schedule.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
