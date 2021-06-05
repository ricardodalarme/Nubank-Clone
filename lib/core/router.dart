import 'package:flutter/material.dart';

class MyRouter {
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

  static void popPage(BuildContext context) => Navigator.pop(context);
}
