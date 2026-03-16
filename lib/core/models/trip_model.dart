class Trip {
  final int id;
  final String category;
  final String name;
  final String country;
  final String image;
  final double rating;
  final int reviews;
  final String description;
  final List<String> schedule;
  final String accommodation;

  Trip({
    required this.id,
    required this.category,
    required this.name,
    required this.country,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.schedule,
    required this.accommodation,
  });
}
