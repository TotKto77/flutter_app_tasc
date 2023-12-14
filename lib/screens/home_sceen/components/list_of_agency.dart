import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';

import 'package:flutter_app_tasc/screens/agency_detail_screen/agency_detail_screen.dart';
import 'package:provider/provider.dart';

class TopChannelsWidget extends StatelessWidget {
  const TopChannelsWidget({Key? key, required this.sourcesList})
      : super(key: key);
  final List<Source>? sourcesList;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sourcesList?.length, //+ 1,
        itemBuilder: (context, index) {
          // карточкa агентства
          final agency = sourcesList?[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.images.standardLogo),
                    radius: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(agency!.name,
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.titleText)),
                  const SizedBox(height: 8),
                  Text(agency!.category,
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.comentText)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
