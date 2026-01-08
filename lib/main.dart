import 'package:curriculo/providers/provider_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:provider/provider.dart';
import 'package:curriculo/pages/page_home.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier(dark), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raul Zanardo',
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
      supportedLocales: const [Locale('pt', "BR"), Locale('en', "US")],
      theme: themeNotifier.getTheme(),

      themeMode: ThemeMode.system,
      home: I18n(
        initialLocale: const Locale('pt', 'BR'),
        //initialLocale: const Locale('en', 'US'),
        child: const PageHome(),
      ),
    );
  }
}
