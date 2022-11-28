import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

extension RouterContextExtension on BuildContext {
  Future push(Widget page) {
    return Navigator.push(
      this,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        duration: const Duration(milliseconds: 400),
        child: page,
      ),
    );
  }

  void pop() => Navigator.pop(this);

  Future showBottomSheet(
    Widget page, {
    bool isScrollControlled = true,
  }) {
    return showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      context: this,
      builder: (context) => page,
    );
  }
}
