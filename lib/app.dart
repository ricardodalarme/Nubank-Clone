import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/home/home_screen.dart';
import 'package:nubank_clone/theme/texts.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
    );

    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Nubank Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Gotham-SSm', textTheme: customTextTheme),
        home: HomeScreen(),
      ),
    );
  }
}
