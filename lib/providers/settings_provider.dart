import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String langCode = 'en';

  void changeTheme(ThemeMode newMode) {
    themeMode = newMode;
    notifyListeners();
  }

  void changeLocale(String newLocale) {
    langCode = newLocale;
    notifyListeners();
  }

  bool isDarkMode() {
    return themeMode == ThemeMode.dark;
  }

  String getMainBackgroundImage() {
    return themeMode == ThemeMode.light
        ? "assets/images/main_background.png"
        : "assets/images/main_background_dark.png";
  }
}
