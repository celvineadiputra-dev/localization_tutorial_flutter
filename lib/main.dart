import 'package:flutter/material.dart';
// Add this line
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_tutorial_flutter/pages/home_example.dart';
// Add this line
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const LocalizationApp());
}

class LocalizationApp extends StatelessWidget {
  const LocalizationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localization Example',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('id'),
      ],
      // locale: const Locale('en'),
      theme: ThemeData(useMaterial3: true),
      home: const HomeExample(),
    );
  }
}
