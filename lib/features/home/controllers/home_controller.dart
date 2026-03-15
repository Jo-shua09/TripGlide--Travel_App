import 'package:get/get.dart';
import 'package:travel_app/core/data/trips_data.dart';

class HomeController extends GetxController {
  var allTripsList = allTrips.obs;
  var selectedCategory = 'All'.obs;

  RxList<Trip> favoriteTripsList = <Trip>[].obs;

  bool isFavorite(Trip trip) => favoriteTripsList.contains(trip);

  void toggleFavorite(Trip trip) {
    if (isFavorite(trip)) {
      favoriteTripsList.remove(trip);
    } else {
      favoriteTripsList.add(trip);
    }
  }

  // This logic extracts unique categories from your dummy data
  List<String> get categories {
    // 1. Get all categories from the list
    // 2. Convert to a Set to remove duplicates
    // 3. Convert back to a list and add 'All' at the start
    return ['All', ...allTrips.map((trip) => trip.category).toSet().toList()];
  }

  void filterByCategory(String category) {
    selectedCategory.value = category;
    if (category == 'All') {
      allTripsList.assignAll(allTrips);
    } else {
      allTripsList.assignAll(
        allTrips.where((trip) => trip.category == category).toList(),
      );
    }
  }
}
