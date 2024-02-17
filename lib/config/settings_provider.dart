import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/tasbeh/widgets/sebha_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.light;

  changeLanguage(String newLanguage) async {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("language", currentLanguage);

    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) async {
    if (currentThemeMode == newTheme) return;
    currentThemeMode = newTheme;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("theme", currentThemeMode.toString());

    notifyListeners();
  }


  String changeBackground() {
    return currentThemeMode != ThemeMode.dark
        ? "assets/images/main_background.png"
        : "assets/images/main_dark_background.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }

  Future<void> loadSettings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? mode = prefs.getString("theme");
    String? language = prefs.getString("language");
    int? sebha = prefs.getInt("sebha");

    mode ??= currentThemeMode.toString();
    currentThemeMode = (mode == "dark" ? ThemeMode.dark : ThemeMode.light);

    language ??= currentLanguage;
    currentLanguage = language;

  }
}
