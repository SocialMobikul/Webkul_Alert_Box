library flutter_webkul_alert_box;

import 'package:flutter/material.dart';
import 'package:flutter_webkul_alert_box/webkul_alert_dialog/flutter_webkul_alert_box.dart';

/// Create animation offset based on selected [AnimationType]
enum AnimationType {
  none,
  dropFromTop,
  dropFromBottom,
  slideFromRight,
  slideFromLeft,
  slideFromBottomRight,
  slideFromBottomLeft,
  slideFromTopRight,
  slideFromTopLeft,
}

/// [createAnimationOffset] Animation offset based on selected [AnimationType]
Tween<Offset> createAnimationOffset(AnimationType type) {
  switch (type) {
    case AnimationType.none:
      return Tween(begin: Offset.zero, end: Offset.zero);
    case AnimationType.dropFromTop:
      return Tween(begin: const Offset(0, -1), end: Offset.zero);
    case AnimationType.dropFromBottom:
      return Tween(begin: const Offset(0, 1), end: Offset.zero);
    case AnimationType.slideFromRight:
      return Tween(begin: const Offset(1, 0), end: Offset.zero);
    case AnimationType.slideFromLeft:
      return Tween(begin: const Offset(-1, 0), end: Offset.zero);
    case AnimationType.slideFromBottomRight:
      return Tween(begin: const Offset(1, 1), end: Offset.zero);
    case AnimationType.slideFromBottomLeft:
      return Tween(begin: const Offset(-1, 1), end: Offset.zero);
    case AnimationType.slideFromTopRight:
      return Tween(begin: const Offset(1, -1), end: Offset.zero);
    case AnimationType.slideFromTopLeft:
      return Tween(begin: const Offset(-1, -1), end: Offset.zero);
  }
}

/// Show MobikulAlertBox with animation or no animation
void mobikulAlertBox(
  BuildContext context, {
  AnimationType animation = AnimationType.none,
  String? title,
  Widget? icon,
  String? content,
  List<Widget> actions = const <Widget>[],
  double animationDuration = 300, // Default animation duration
  bool barrierDismissible = true, // Default barrier dismissible value
}) {
  Widget alertDialog = WebkulAlertDialog(
    actions: actions,
    title: title,
    icon: icon,
    message: content,
  );

  if (animation == AnimationType.none) {
    showDialog(
      context: context,
      builder: (context) => alertDialog,
    );
  } else {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: barrierDismissible,
      transitionDuration: Duration(milliseconds: animationDuration.toInt()),
      context: context,
      pageBuilder: (context, anim1, anim2) => alertDialog,
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: createAnimationOffset(animation).animate(anim1),
          child: child,
        );
      },
    );
  }
}
