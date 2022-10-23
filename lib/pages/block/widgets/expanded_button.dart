import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onTap;

  const ExpandedButton(
    this.text, {
    this.onTap,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: color, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
