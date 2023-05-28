import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show(
    BuildContext context,
    String text, {
    SnackBarAction? action,
    Duration? duration,
    IconData? icon,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(20),
        behavior: SnackBarBehavior.floating,
        backgroundColor: theme.indicatorColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: theme.primaryColor),
        ),
        duration: duration ?? const Duration(milliseconds: 1600),
        content: Row(
          children: [
            Icon(icon ?? Icons.error),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                text,
                style: theme.textTheme.bodySmall!.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
        action: action,
      ),
    );
  }
}
