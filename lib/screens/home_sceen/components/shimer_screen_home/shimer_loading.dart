import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_grid_widget.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_list_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ShimerLoading extends StatelessWidget {
  const ShimerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var slivers2 = <Widget>[
      const SliverToBoxAdapter(
        child: ShimerNewsListWidget(),
      ),
      SliverPadding(
        padding: const EdgeInsets.fromLTRB(24, 16, 25, 8),
        sliver: SliverToBoxAdapter(
          child: Text(
            AppLocalizations.of(context)?.agencyName ?? '',
            style: themeBasedStyle(themeProvider, AppStyleText.mainText),
            //AppStyleText.mainText,
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: ShimerTopChannelsWidget(),
      ),
      SliverPadding(
        padding: const EdgeInsets.fromLTRB(24, 16, 25, 25),
        sliver: SliverToBoxAdapter(
          child: Text(
            AppLocalizations.of(context)?.hot ?? '',
            style: themeBasedStyle(themeProvider, AppStyleText.mainText),
          ),
        ),
      ),
      const SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        sliver: ShimerGridWidget(),
      ),
    ];
    return CustomScrollView(slivers: slivers2);
  }
}
