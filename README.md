# Structure

```
lib/
├── main.dart                # Entry point of the app
├── app.dart                 # Global theme, routing, and localization setup
│
├── core/                    # App-wide constants, themes, and utilities
│   ├── constants/           # API keys, asset paths, strings
│   ├── theme/               # ThemeData, colors, text styles
│   └── utils/               # Formatters, validators, extensions
│
├── data/                    # Data layer
│   ├── models/              # JSON serialization/Data classes
│   ├── repositories/        # Connects data sources to the UI logic
│   └── services/            # API clients, Firebase, or Local DB
│
├── screens/                 # Full pages/views (The "Smart" widgets)
│   ├── home/
│   │   ├── home_screen.dart
│   │   └── home_controller.dart
│   └── login/
│       └── login_screen.dart
│
└── widgets/                 # Reusable UI components (The "Dumb" widgets)
    ├── buttons/             # Custom buttons
    ├── inputs/              # Custom text fields
    └── feedback/            # Custom dialogs or snackbars
```
