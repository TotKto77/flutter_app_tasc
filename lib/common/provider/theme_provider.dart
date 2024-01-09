import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      textTheme: const TextTheme(bodyLarge: TextStyle(color: AppColors.black)),
      iconTheme: const IconThemeData(color: AppColors.black),
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.backgroundLight)),
      iconTheme: const IconThemeData(color: AppColors.backgroundLight),
    );
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    SystemChrome.setSystemUIOverlayStyle(
      themeMode == ThemeMode.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
    );
    notifyListeners();
  }
}
