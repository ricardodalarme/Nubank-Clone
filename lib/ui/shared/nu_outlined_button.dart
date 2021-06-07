import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class NuOutlinedButton extends StatelessWidget {
  final String Value;

  NuOutlinedButton(this.Value);

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
        Value.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
