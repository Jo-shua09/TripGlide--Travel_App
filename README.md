# 🛫 TripGlide - Your Travel Inspiration App

[![Flutter](https://flutter.dev/images/flutter/logo/120x120.png)](https://flutter.dev) [![GetX](https://raw.githubusercontent.com/jonataslaw/getx/master/docs/static/imgs/getx_logo.png)](https://pub.dev/packages/get)

**TripGlide** is a modern, cross-platform Flutter application designed for travel enthusiasts. Discover breathtaking destinations, explore curated trip itineraries by continent, and plan your next adventure. Currently features authentication, home dashboard with trip categories, search, and rich trip details powered by mock data.

## ✨ Features

- **Authentication**: Secure login & signup screens with custom UI components
- **Home Dashboard**: Welcome screen with \"TripGlide\" branding and continent-based trip categories
- **Trip Discovery**: Detailed trip cards with ratings, descriptions, schedules, and luxury accommodations
- **Search**: Integrated search screen for finding trips
- **Cross-Platform**: Android, iOS, Web, Desktop (Windows/Linux/macOS)
- **Responsive UI**: Custom fonts (InstrumentSans), Material Design, image assets
- **State Management**: GetX for navigation and reactivity

## 🏗️ Tech Stack

| Category         | Technologies                                                  |
| ---------------- | ------------------------------------------------------------- |
| Framework        | Flutter (SDK ^3.9.2)                                          |
| State/Navigation | GetX (^4.7.3)                                                 |
| UI/Fonts         | Material Design, Google Fonts (^8.0.2), Custom InstrumentSans |
| Data             | Mock trips in `lib/core/data/trips_data.dart`                 |
| Linting          | flutter_lints (^5.0.0)                                        |

## 📱 Screenshots

_(Add screenshots here: home screen, trip details, auth flows)_

```
Example: Run `flutter screenshot` or add manually to `/screenshots/`
- home_screen.png
- paris_trip_detail.png
- login_screen.png
```

## 🚀 Quick Start

### Prerequisites

- Flutter SDK (^3.9.2) installed: [flutter.dev](https://flutter.dev/docs/get-started/install)
- Dart SDK included with Flutter

### Installation

1. Clone/Download the repo
2. Navigate to project root: `cd travel_app`
3. Install dependencies:
   ```
   flutter pub get
   ```
4. Run the app:
   ```
   flutter run
   ```

   - Select device (emulator/physical/web)

### Build for Release

```
flutter build apk  # Android
flutter build ios  # iOS (macOS required)
flutter build web  # Web
```

## 📂 Project Structure

```
lib/
├── main.dart              # App entry point (GetMaterialApp)
├── core/
│   ├── data/trips_data.dart  # Sample trips data
│   └── widgets/startup_screen.dart
└── features/
    ├── auth/             # Login/Signup
    ├── home/             # Dashboard
    ├── search/           # Trip search
    └── profile/          # (WIP)
```

## 🗺️ Sample Data

Powered by 12 curated trips across 4 continents:

| Continent | Sample Trips                                   |
| --------- | ---------------------------------------------- |
| Europe    | Paris Romantic Getaway, Santorini Sunset Bliss |
| Asia      | Tokyo Urban Adventure, Bali Tropical Paradise  |
| America   | New York City Lights, Machu Picchu Wonder      |
| Africa    | Cape Town Coastal, Marrakech Exotic            |

**Trip Model:**

```dart
class Trip {
  final String category, name, country, image;
  final double rating; int reviews;
  final String description;
  final List<String> schedule;
  final String accommodation;
}
```

## 🛤️ Roadmap

- [x] Basic auth & home screens
- [ ] Trip categorization (from TODO.md)
- [ ] Full profile management
- [ ] Real APIs (e.g., travel APIs for dynamic data)
- [ ] Favorites/Booking flow
- [ ] Push notifications
- [ ] Offline support (Hive/SQLite)

See [TODO.md](TODO.md) for current tasks.

## 🤝 Contributing

1. Fork the repo
2. Create feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push: `git push origin feature/amazing-feature`
5. Open Pull Request

Follow Dart/Flutter style guidelines.

## 📄 License

MIT License - see [LICENSE](LICENSE) (add if needed).

## 🙌 Acknowledgments

- Flutter Community
- Unsplash for trip images
- GetX for state management

---

⭐ **Star the repo if you find it useful!** Questions? Open an issue.

**Happy Travels! ✈️**
