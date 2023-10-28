import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health_doctors/config/theme.dart';
import 'package:yu_health_doctors/l10n/l10n.dart';
import 'package:yu_health_doctors/screens/home_page/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
