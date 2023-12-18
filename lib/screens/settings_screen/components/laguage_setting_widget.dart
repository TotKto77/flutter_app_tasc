import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/widgets/language_flag_widget.dart';
import 'package:flutter_app_tasc/common/widgets/languages_picker_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageSettingWidget extends StatelessWidget {
  const LanguageSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const LanguageFlagWidget(),
          const SizedBox(width: 8),
          Text(
            AppLocalizations.of(context)?.title ?? 'Language',
            style: themeBasedStyle(themeProvider, AppStyleText.mainText),
          ),
          const Spacer(),
          const LanguagePickerWidget(),
        ],
      ),
    );
  }
}
