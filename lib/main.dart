import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/home_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: kPrimaryColor,
    ),
    home: HomeScreen(),
  ));
}
