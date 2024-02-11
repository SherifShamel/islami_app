import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/quran/pages/quran_details_view.dart';
import 'package:islami_app/modules/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationThemeManager.lightTheme,

      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName:(context) => LayoutView(),
        QuranDetailsView.routeName:(context) =>  QuranDetailsView(),
      },
    );
  }
}
