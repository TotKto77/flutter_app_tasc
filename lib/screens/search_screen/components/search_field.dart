import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SearchFieldSearchScreen extends StatelessWidget {
  final Function(String) onSearch;
  const SearchFieldSearchScreen({
    Key? key,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: TextField(
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                onSearch(value);
              }
            },
            style: themeBasedStyle(themeProvider, AppStyleText.comentText),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: themeProvider.isDarkMode ? Colors.white : Colors.black,
              ),
              hintText: AppLocalizations.of(context)?.search ?? '',
              hintStyle:
                  themeBasedStyle(themeProvider, AppStyleText.comentText),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.all(12),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
