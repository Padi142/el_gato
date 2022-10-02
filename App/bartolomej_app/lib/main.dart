import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
//import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      key: UniqueKey(),
      supportedLocales: const [Locale('cs', 'CS')],
      path: 'assets/translations',
      fallbackLocale: const Locale('cs'),
      child: const BartolomejApp(),
    ),
  );
}
