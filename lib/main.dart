import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/hadeth/pages/hadeth_details_view.dart';
import 'package:islami_app/modules/hadeth/pages/hadeth_view.dart';
import 'package:islami_app/modules/quran/pages/quran_details_view.dart';
import 'package:islami_app/modules/splash/page/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context)!;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(vm.currentLanguage),
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      themeMode: vm.currentThemeMode,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
