import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/models/trip_model.dart';

class UpcomingTourDetailsScreen extends StatefulWidget {
  const UpcomingTourDetailsScreen({
    super.key,
    required this.tourName,
    required this.trip,
  });

  final Trip trip;
  final String? tourName;

  @override
  State<UpcomingTourDetailsScreen> createState() =>
      _UpcomingTourDetailsScreenState();
}

class _UpcomingTourDetailsScreenState extends State<UpcomingTourDetailsScreen> {
  int _selectedTabIndex = 0;
  final Set<int> _expandedScheduleIndices = {};
  final List<String> _tabs = [
    'Tour Schedule',
    'Accommodation',
    'Booking Details',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
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
                          widget.tourName ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'InstrumentSans',
                          ),
                        ),
                        Text(
                          '${widget.trip.days} days ● from \$${widget.trip.price}/person',
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
            Expanded(
              child: DraggableScrollableSheet(
                snap: true,
                snapSizes: const [0.65, 0.9],
                initialChildSize: 0.9, //?? Halfway open
                minChildSize: 0.65,
                maxChildSize: 0.9, //?? Almost full screen
                builder: (context, scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!! Drag Handle
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        //!! Horizontal Tabs
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            physics: const BouncingScrollPhysics(),
                            itemCount: _tabs.length,
                            itemBuilder: (context, index) {
                              final isSelected = _selectedTabIndex == index;
                              return GestureDetector(
                                onTap: () =>
                                    setState(() => _selectedTabIndex = index),
                                child: Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.grey.shade900
                                        : Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Text(
                                      _tabs[index],
                                      style: TextStyle(
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.w700,
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.grey.shade900,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Text(
                            '${widget.trip.days} days ${widget.tourName}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'InstrumentSans',
                            ),
                          ),
                        ),

                        //!! Dynamic Content Based on Selected Tab
                        Expanded(child: _buildTabContent(scrollController)),
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

  Widget _buildTabContent(ScrollController scrollController) {
    if (_selectedTabIndex == 0) {
      return ListView.builder(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.trip.detailedSchedule.length,
        itemBuilder: (context, index) {
          final schedule = widget.trip.detailedSchedule[index];
          final isExpanded = _expandedScheduleIndices.contains(index);
          return SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isExpanded ? Colors.grey.shade100 : Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300, width: 0.7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          schedule.dayImage,
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              schedule.dayTitle,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              schedule.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isExpanded) {
                              _expandedScheduleIndices.remove(index);
                            } else {
                              _expandedScheduleIndices.add(index);
                            }
                          });
                        },
                        child: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  //?? Details
                  if (isExpanded) ...[
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSchedulePeriod('Morning', schedule.morning),
                        const SizedBox(height: 12),
                        _buildSchedulePeriod('Afternoon', schedule.afternoon),
                        const SizedBox(height: 12),
                        _buildSchedulePeriod('Evening', schedule.evening),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      );
    } else if (_selectedTabIndex == 1) {
      return SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.hotel_outlined, color: Colors.black54),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  widget.trip.accommodation,
                  style: const TextStyle(fontSize: 15, height: 1.5),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow(
                Icons.group_outlined,
                'Available Slots',
                '${widget.trip.bookingDetails.availableSlots} slots remaining',
              ),
              const Divider(height: 32),
              _buildDetailRow(
                Icons.calendar_today_outlined,
                'Next Departure',
                widget.trip.bookingDetails.nextDeparture
                    .toLocal()
                    .toString()
                    .split(' ')[0],
              ),
              const Divider(height: 32),
              _buildDetailRow(
                Icons.policy_outlined,
                'Cancellation Policy',
                widget.trip.bookingDetails.cancellationPolicy,
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget _buildSchedulePeriod(String period, String activity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          period,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          activity,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildDetailRow(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.black54, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
