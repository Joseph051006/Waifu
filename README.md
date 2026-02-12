# Structure

```
lib/
├── main.dart                # Entry point of the app│
├── core/                    # App-wide constants, themes, and utilities
│   ├── constants/           # API keys, asset paths, strings
│   ├── theme/               # ThemeData, colors, text styles
│
├── screens/                 # Full pages/views (The "Smart" widgets)
│   ├── home/
│   └── login/
│    
└── widgets/                 # Reusable UI components (The "Dumb" widgets)
    ├── buttons/             # Custom buttons
    ├── inputs/              # Custom text fields
    └── feedback/            # Custom dialogs or snackbars
```
