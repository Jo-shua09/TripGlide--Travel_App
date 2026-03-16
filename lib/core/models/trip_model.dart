class ScheduleItem {
  final String dayTitle;
  final String title;
  final String morning;
  final String afternoon;
  final String evening;
  final String dayImage;

  ScheduleItem({
    required this.dayTitle,
    required this.title,
    required this.morning,
    required this.afternoon,
    required this.evening,
    required this.dayImage,
  });
}

class Trip {
  final int id;
  final String name;
  final String country;
  final String image;
  final double rating;
  final int reviews;
  final double price;
  final int days;
  final String category;
  final String description;
  final List<ScheduleItem> detailedSchedule;
  final String accommodation;

  Trip({
    required this.id,
    required this.name,
    required this.country,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.days,
    required this.category,
    required this.description,
    required this.detailedSchedule,
    required this.accommodation,
  });
}
