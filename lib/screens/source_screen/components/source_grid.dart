import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/agency_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AgencySliverGrid extends StatelessWidget {
  final List<Source>? sourcesList;
  final void Function(Source)? onTap;

  const AgencySliverGrid({
    Key? key,
    required this.sourcesList,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    // Проверка на пустой список
    if (sourcesList == null || sourcesList!.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: Text(
            AppLocalizations.of(context)?.agenciesMatching ?? '',
            style: themeProvider.isDarkMode
                ? TextStyle(color: Colors.white)
                : TextStyle(color: Colors.black),
          ),
        ),
      );
    }

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final agency = sourcesList![index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgencyDetailScreen(
                    sourceId: agency.id ?? '',
                    source: agency,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                    spreadRadius: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      child: Image.asset(AppAssets.images.standardLogo),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        agency.name ?? '',
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.titleAgencyGridText),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: sourcesList!.length,
      ),
    );
  }
}
