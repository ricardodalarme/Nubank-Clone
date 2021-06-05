import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/ui/screens/home/home_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppState(),
    child: MaterialApp(
      title: 'Nubank Clone',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kPrimaryColor,
    statusBarBrightness: Brightness.light,
  ));
}
