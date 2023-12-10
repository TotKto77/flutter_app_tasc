import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    SystemChrome.setSystemUIOverlayStyle(
      themeMode == ThemeMode.dark
          ? SystemUiOverlayStyle.light // Светлые иконки для тёмной темы
          : SystemUiOverlayStyle.dark, // Тёмные иконки для светлой темы
    );
    notifyListeners();
  }
}
