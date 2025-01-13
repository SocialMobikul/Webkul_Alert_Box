#
```dart
import 'package:flutter/material.dart';
import 'package:flutter_webkul_alert_box/flutter_webkul_alert_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Webkul Alert Box Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AlertBoxDemo(),
    );
  }
}

class AlertBoxDemo extends StatelessWidget {
  const AlertBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webkul Alert Box Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Directly calling the function with all parameters
                mobikulAlertBox(
                  context,
                  animation: AnimationType.dropFromTop,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with drop from top animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Drop from Top'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.dropFromBottom,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with drop from bottom animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Drop from Bottom'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromRight,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from right animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Right'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromLeft,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from left animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Left'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromBottomRight,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from bottom right animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Bottom Right'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromBottomLeft,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from bottom left animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Bottom Left'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromTopRight,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from top right animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Top Right'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.slideFromTopLeft,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with slide from top left animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('Slide from Top Left'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                mobikulAlertBox(
                  context,
                  animation: AnimationType.none,
                  title: 'Custom Alert',
                  content: 'This is a customizable alert with no animation.',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                  animationDuration: 300,
                  barrierDismissible: true,
                );
              },
              child: const Text('No Animation'),
            ),
          ],
        ),
      ),
    );
  }
}

```
 