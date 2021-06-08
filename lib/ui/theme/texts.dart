import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

final customTextTheme = TextTheme(
  subtitle2: TextStyle(
    color: kSecondaryTextColor,
    fontWeight: FontWeight.normal,
  ),
  headline4: TextStyle(
    fontSize: 30,
    color: kTextColor,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  ),
  subtitle1: TextStyle(
    fontSize: 17,
    color: kSecondaryTextColor,
    letterSpacing: -1,
  ),
  button: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
  headline5: TextStyle(fontWeight: FontWeight.bold),
  headline6: TextStyle(fontWeight: FontWeight.w400),
);
