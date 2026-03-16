import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/models/trip_model.dart';

class UpcomingTourDetailsScreen extends StatelessWidget {
  UpcomingTourDetailsScreen({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colo,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade900,
            ),
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(trip.name),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: trip.detailedSchedule.length,
        itemBuilder: (context, index) {
          final schedule = trip.detailedSchedule[index];
          return ListTile(
            title: Text(schedule.title),
            subtitle: Text(schedule.dayTitle),
          );
        },
      ),
    );
  }
}
