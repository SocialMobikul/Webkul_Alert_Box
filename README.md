# Webkul Alert Box Flutter Package

The `WebkulAlertBox` is a customizable Flutter widget that allows you to show alert dialogs with various animation styles or without animation. This package provides a flexible and easy-to-use way to display alerts with custom titles, messages, icons, and actions.

## Features

- Display alert dialogs with or without animations.
- Customizable alert dialog with title, message, icon, and actions.
- Various animation styles including sliding from different directions.
- Optional duration and dismissible behavior for the alert box.

## Installation

To use the package in your Flutter project, add the following dependency in your `pubspec.yaml` file:
```.yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_webkul_alert_box: ^0.0.6  # Replace with the latest version
```

## Usages
# Import the package:
```dart
import 'package:webkul_alert_box/flutter_webkul_alert_box.dart';
```
# Show an Alert Box with no animation:
```dart
MobikulAlertBox(
  context,
  title: "Test Title",
  content: "This is a test message.",
  animation: AnimationType.none,
  animationDuration: 300,
  barrierDismissible: true,
  icon: Icon(Icons.info),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text("OK")
    )
  ]
);

```

# Show an Alert Box with a specific animation:
```dart
MobikulAlertBox(
  context,
  title: "Animated Alert",
  content: "This alert will appear with an animation.",
  animation: AnimationType.slideFromTopLeft,
  animationDuration: 500,
  barrierDismissible: false,
  icon: Icon(Icons.warning),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text("Dismiss")
    )
  ]
);

```

## Output

Here is a screenshot of the Webkul Alert Box in action:

![Webkul Alert Box](https://github.com/SocialMobikul/Webkul_Alert_Box/blob/main/webkul_alert_box.png)



