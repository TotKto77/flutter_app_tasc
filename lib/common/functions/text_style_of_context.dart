import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/common/provider/theme_provider.dart';

TextStyle themeBasedStyle(ThemeProvider themeProvider, TextStyle baseStyle) {
  return baseStyle.copyWith(
    color: themeProvider.isDarkMode ? Colors.white : AppClor.background,
  );
}
