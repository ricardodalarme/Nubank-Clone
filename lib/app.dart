import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/ui/screens/home/home_screen.dart';
import 'package:nubank_clone/ui/theme/texts.dart';
import 'package:provider/provider.dart';

// flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/core/ -o locale_keys.g.dart
// flutter pub run easy_localization:generate -S assets/translations -s pt-BR.json -O lib/core/internationalization -o loader.g.dart -f json

class NuApp extends StatelessWidget {
  NuApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Nubank Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Gotham-SSm', textTheme: customTextTheme),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomeScreen(),
      ),
    );
  }
}
