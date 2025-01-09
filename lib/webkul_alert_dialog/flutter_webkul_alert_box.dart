import 'package:flutter/material.dart';

class WebkulAlertDialog extends StatelessWidget {
  const WebkulAlertDialog({super.key, this.icon, this.title, this.message, this.actions});
  final Widget? icon;
  final String? title;
  final String? message;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      icon: icon,
      title: title == null
          ? null
          : Text(
        title!,
        textAlign: TextAlign.center,
      ),
      content: message == null
          ? null
          : Text(
        message!,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: actions,
    );
  }
}



