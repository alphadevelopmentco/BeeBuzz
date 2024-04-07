// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_locale.dart';
import 'core/logic/singleton/singleton.dart';
import 'core/logic/singleton/statics.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await singletone();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", ""),
        Locale("en", ""),
      ],
      locale: Locale(box.getSaveData(key: keys.language) ?? "en", ""),
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale local in supportLang) {
            if (local.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },
      routerConfig: router.router,
    );
  }
}

