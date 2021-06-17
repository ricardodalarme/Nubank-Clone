import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class NuOutlinedButton extends StatelessWidget {
  final String value;

  NuOutlinedButton(this.value);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(color: kPrimaryColor, width: 0.5),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      child: Text(
        value.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
