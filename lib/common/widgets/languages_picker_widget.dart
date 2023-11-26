import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/provider/language_provider.dart';
import 'package:flutter_app_tasc/l10n/l10n.dart';

import 'package:provider/provider.dart';

class LanguagePickerWidget extends StatefulWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  _LanguagePickerWidgetState createState() => _LanguagePickerWidgetState();
}

class _LanguagePickerWidgetState extends State<LanguagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LanguageProvider>(context, listen: false);
    return PopupMenuButton<String>(
        initialValue: provider.locale.countryCode,
        onSelected: (countryCode) {
          provider.updateLanguage(Locale(countryCode));
        },
        icon: const Icon(
          Icons.translate_rounded,
          size: 24.0,
        ),
        itemBuilder: (context) {
          return L10n.all.map((locale) {
            String countryName = L10n.getCountryName(locale.languageCode);
            String countryFlag = L10n.getFlag(locale.languageCode);
            return PopupMenuItem<String>(
                value: locale.languageCode,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      countryName,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: (locale.languageCode ==
                                  provider.locale.languageCode)
                              ? Colors.blue
                              : Colors.black),
                    ),
                    Text(
                      countryFlag,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ],
                ));
          }).toList();
        });
  }
}
