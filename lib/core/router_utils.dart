import 'package:flutter/material.dart';

abstract class RouterUtils {
  static Future pushPage(BuildContext context, Widget page) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  static Future showBottomSheet(
    BuildContext context,
    Widget page, {
    bool isScrollControlled = true,
  }) {
    return showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      context: context,
      builder: (context) => page,
    );
  }

  static void popPage(BuildContext context) => Navigator.pop(context);
}
