import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/home_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

void main() {
  runApp(MaterialApp(
    title: 'NuIcons',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: kPrimaryColor,
      primarySwatch: Colors.blue,
    ),
    home: HomeScreen(),
  ));
}
