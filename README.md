# Daily Schedule Screen - Flutter Developer Intern Assessment

This is a Flutter implementation of a **Daily Schedule screen**, part of a construction site management system. The screen is designed to help site workers and managers keep track of daily activities efficiently.

## 📱 Features

- **Month Selector**  
  - Displays current month.
  - Allows navigation to previous or next months using arrow buttons.

- **Weekday Strip**  
  - Shows 7 days of the current week.
  - Highlights the selected date and "Today".

- **Daily Timeline View**  
  - Displays a horizontal scrollable list of 8 dates.
  - Each date has a vertical line connecting to the event timeline.
  - The focused date is centered and highlighted with a bold line.

- **Bottom Navigation Bar**  
  - Custom-styled with rounded top corners and theme colors.
  - Includes icons for navigating different sections like Home, Schedule, Subproject, and Queries.

## ⚠️ Known Limitation

- The **"Selected Day's Events" section** is not fully implemented.
  - Only placeholder/dummy logic is added for today’s date.
  - Dynamic event loading for each selected day is yet to be completed.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK
- An emulator or physical Android/iOS device

### Run the App

1. Clone the repository or copy the project files.
2. Navigate to the project folder.
3. Run `flutter pub get` to install dependencies.
4. Launch with `flutter run`.

## 📦 Dependencies

- [`intl`](https://pub.dev/packages/intl): For formatting dates
- [`flutter_svg`](https://pub.dev/packages/flutter_svg): For Figma-exported icons (if used)
- [`table_calendar`](https://pub.dev/packages/table_calendar): For calendar-related logic (optional)

## 📂 Folder Structure

```plaintext
lib/
├── main.dart
├── screens/
│   └── daily_schedule/
│       ├── daily_schedule.dart
│       └── event.dart
assets/
├── fonts/
└── icons/
```

