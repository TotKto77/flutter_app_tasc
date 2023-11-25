import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('es'),
    const Locale('ru')
  ];

  static String getFlag(String countryCode) {
    switch (countryCode) {
      case 'es':
        return 'ES';
      case 'ru':
        return 'RU';

      default:
        return '🇺🇸';
    }
  }

  static String getCountryName(String countryCode) {
    switch (countryCode) {
      case 'es':
        return 'Spanyol';
      case 'ru':
        return 'Russia';
      default:
        return 'United States';
    }
  }
}
