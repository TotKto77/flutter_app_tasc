import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/home_sceen/bloc/home_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlertDialogConectionError extends StatelessWidget {
  const AlertDialogConectionError({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 60, 16, 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.asset(
              AppAssets.images.errorImagi,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Text(
                AppLocalizations.of(context)?.alert ?? '',
                style: themeBasedStyle(themeProvider, AppStyleText.mainText),
              )),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: const RetryButton()),
        ]);
  }
}

class RetryButton extends StatelessWidget {
  const RetryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homePageBloc = BlocProvider.of<HomePageBloc>(context);

    return ElevatedButton(
      onPressed: () {
        homePageBloc.add(HomePageFetchTopHeadlines());
      },
      child: Text(AppLocalizations.of(context)?.retry ?? ''),
    );
  }
}
