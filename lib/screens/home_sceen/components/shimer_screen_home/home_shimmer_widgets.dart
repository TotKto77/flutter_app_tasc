import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_grid_widget.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_list_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeShimmerWidgets extends StatelessWidget {
  const HomeShimmerWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const ShimerNewsListWidget(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 25, 8),
                child: Text(
                  AppLocalizations.of(context)?.agencyName ?? '',
                  style: themeBasedStyle(themeProvider, AppStyleText.mainText),
                ),
              ),
              const ShimerTopChannelsWidget(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 25, 25),
                child: Text(
                  AppLocalizations.of(context)?.hot ?? '',
                  style: themeBasedStyle(themeProvider, AppStyleText.mainText),
                ),
              ),
              const ShimerGridWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
