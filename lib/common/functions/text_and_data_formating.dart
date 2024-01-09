import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:intl/intl.dart';

TextStyle themeBasedStyle(ThemeProvider themeProvider, TextStyle baseStyle) {
  return baseStyle.copyWith(
    color: themeProvider.isDarkMode
        ? AppColors.backgroundLight
        : AppColors.backgroundDark,
  );
}

String getTextBeforeTripleDots(String text) {
  var parts = text.split('...');
  if (parts.length > 1) {
    return '${parts.first}...';
  }
  return text;
}

String? removeText(String? text) {
  if (text != null && text.length >= 15) {
    text = text.substring(0, text.length - 15);
  }

  return '$text...';
}

String formatDate(String? dateStr, Locale myLocale) {
  if (dateStr == null) return '';

  DateTime date = DateTime.parse(dateStr);

  DateFormat formatter = DateFormat('d MMMM', myLocale.toString());

  return formatter.format(date);
}

String capitalizeFirstLetter(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}
