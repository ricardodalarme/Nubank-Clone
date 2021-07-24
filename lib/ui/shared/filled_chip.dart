import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class FilledButton extends StatelessWidget {
  final String value;

  FilledButton(this.value);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: kPrimaryColor,
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
