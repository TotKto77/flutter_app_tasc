import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';

import 'package:flutter_app_tasc/screens/agency_detail_screen/agency_detail_screen.dart';
import 'package:provider/provider.dart';

class TopChannelsWidget extends StatelessWidget {
  const TopChannelsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final List<AgencyModel> topAgencies =
        AgencyModel.staticAgencyList.sublist(0, 10);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topAgencies.length + 1,
        itemBuilder: (context, index) {
          if (index == topAgencies.length) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  // MyBottomNavigation.globalKey.currentState?.onSelectPage(1);
                },
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            );
          }

          // карточкa агентства
          final agency = topAgencies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgencyDetailScreen(agency: agency),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(agency.imageUrl),
                    radius: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(agency.name,
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.titleText)),
                  const SizedBox(height: 8),
                  Text(agency.type,
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
