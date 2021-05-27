import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/home_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NuIcons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NuIcons',
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
