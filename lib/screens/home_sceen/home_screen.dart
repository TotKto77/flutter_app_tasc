import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/home_sceen/bloc/home_page_bloc.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/greed_of_hot_nwes.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/list_of_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/news_list_widget.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/alert_dialog_home.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_grid_widget.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/shimer_screen_home/shimer_list_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<HomePageBloc, HomePageState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomScrollView(
              slivers: <Widget>[
                if (state is HomePageLoading) ...[
                  const SliverToBoxAdapter(
                    child: ShimerNewsListWidget(),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 25, 8),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        AppLocalizations.of(context)?.agencyName ?? '',
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.mainText),
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
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.mainText),
                      ),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    sliver: ShimerGridWidget(),
                  ),
                ],
                if (state is HomePageLoadData) ...[
                  SliverPadding(
                    padding: const EdgeInsets.only(top: 16),
                    sliver: SliverToBoxAdapter(
                      child: NewsListWidget(
                        articlesList: state.articlesList,
                        themeProvider: themeProvider,
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        AppLocalizations.of(context)?.agencyName ?? '',
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.mainText),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TopChannelsWidget(
                      sourcesList: state.sourcesList,
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        AppLocalizations.of(context)?.hot ?? '',
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.mainText),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: GridHotNews(
                      hotnewsList: state.hotnewsList,
                      themeProvider: themeProvider,
                    ),
                  ),
                ],
                if (state is HomePageError)
                  const SliverToBoxAdapter(child: AlertDialogConectionError()),
              ],
            );
          },
        ),
      ),
    );
  }
}
