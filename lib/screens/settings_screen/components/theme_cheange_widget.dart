import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeCheangeWidget extends StatelessWidget {
  const ThemeCheangeWidget({
    super.key,
    required this.themeProvider,
  });

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
            color: themeProvider.isDarkMode ? Colors.white : Colors.black,
          ),
          const SizedBox(width: 8.0),
          Text(
            AppLocalizations.of(context)?.darkMode ?? '',
            style: themeBasedStyle(themeProvider, AppStyleText.mainText),
          ),
        ],
      ),
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        themeProvider.toggleTheme(value);
      },
    );
  }
}
