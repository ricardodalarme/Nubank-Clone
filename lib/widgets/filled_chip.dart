import 'package:flutter/material.dart';
import 'package:nubank_clone/theme/colors.dart';

class FilledButton extends StatelessWidget {
  final String value;

  const FilledButton(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: kPrimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
      label: Text(
        value,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
