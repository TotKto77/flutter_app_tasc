import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/common/provider/theme_provider.dart';

TextStyle themeBasedStyle(ThemeProvider themeProvider, TextStyle baseStyle) {
  return baseStyle.copyWith(
    color: themeProvider.isDarkMode ? Colors.white : AppClor.background,
  );
}

// String truncateTextAtTripleDots(String text) {
//   int indexOfTripleDots = text.indexOf('...');
//   return indexOfTripleDots != -1 ? text.substring(0, indexOfTripleDots) : text;
// }

// String getTextBeforeTripleDots(String text) {
//   var parts = text.split('...');
//   return parts.first;
// }
String getTextBeforeTripleDots(String text) {
  var parts = text.split('...');
  if (parts.length > 1) {
    return '${parts.first}...';
  }
  return text;
}

String truncateTextAtTripleDots(String text) {
  RegExp exp =
      RegExp(r"\.\.\.\s*"); // Ищем три точки и любое количество пробелов после
  Match? match = exp.firstMatch(text);
  if (match != null) {
    int index = match.start;
    return text.substring(0, index); // Возвращаем подстроку до трёх точек
  }
  return text; // Если трёх точек нет, возвращаем весь текст
}
