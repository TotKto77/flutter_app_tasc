import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/agency_detail_screen.dart';

import 'package:provider/provider.dart';

class TopChannelsWidget extends StatelessWidget {
  const TopChannelsWidget({Key? key, required this.sourcesList, this.onTap})
      : super(key: key);
  final List<Source>? sourcesList;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarProvider =
        Provider.of<BottomNavigationBarProvider>(context, listen: false);
    var screenWidth = MediaQuery.of(context).size.width;
    var itemWidth = (screenWidth - (8 * 5)) / 4;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sourcesList == null
            ? 1
            : sourcesList!.length >= 12
                ? 13
                : sourcesList!.length + 1,
        itemBuilder: (context, index) {
          if (index == 12) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 35,
                ),
                onPressed: () {
                  bottomNavigationBarProvider.currentIndex = 1;
                },
              ),
            );
          }
          final agency = sourcesList != null && index < sourcesList!.length
              ? sourcesList![index]
              : null;
          if (agency != null) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgencyDetailScreen(
                          sourceId: agency.id ?? '',
                          source: agency,
                          // sourcesList: [],
                        ),
                      ));
                },
                child: SizedBox(
                  width: itemWidth,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(AppAssets.images.standardLogo),
                        radius: 30,
                      ),
                      const SizedBox(height: 8),
                      Text(agency.name ?? '',
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.titleText)),
                      const SizedBox(height: 8),
                      Text(capitalizeFirstLetter(agency.category ?? ''),
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.comentText)),
                    ],
                  ),
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
