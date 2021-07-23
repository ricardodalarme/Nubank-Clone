import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('pt', 'BR'),
        ],
        path: 'translations',
        fallbackLocale: Locale('pt', 'BR'),
        child: NuApp()),
  );
}
