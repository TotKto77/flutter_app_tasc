import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/settings_screen/components/laguage_setting_widget.dart';
import 'package:flutter_app_tasc/screens/settings_screen/components/theme_cheange_widget.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(8, 60, 8, 24),
            sliver: SliverToBoxAdapter(
              child: LanguageSettingWidget(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 100,
                  child: ThemeCheangeWidget(themeProvider: themeProvider)),
            ),
          )
        ],
      ),
    );
  }
}
