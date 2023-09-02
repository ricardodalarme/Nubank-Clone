import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';

const customTextTheme = TextTheme(
  titleMedium: TextStyle(
    fontSize: 17,
    color: AppColors.secondaryText,
    fontWeight: FontWeight.w300,
    letterSpacing: -1,
  ),
  titleSmall: TextStyle(
    color: AppColors.secondaryText,
    fontWeight: FontWeight.normal,
  ),
  displaySmall: TextStyle(
    fontSize: 35,
    color: AppColors.text,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  ),
  headlineMedium: TextStyle(
    fontSize: 30,
    color: AppColors.text,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  ),
  labelLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
  bodySmall: TextStyle(height: 1.5),
  headlineSmall: TextStyle(fontWeight: FontWeight.bold),
  titleLarge: TextStyle(fontWeight: FontWeight.w400),
);
