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
        side: BorderSide(color: kPrimaryColor),
        padding: EdgeInsets.all(12),
      ),
      child: Text(
        Value.toUpperCase(),
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
