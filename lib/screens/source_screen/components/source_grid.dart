import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/agency_detail_screen.dart';
import 'package:provider/provider.dart';

class AgencyGrid extends StatelessWidget {
  const AgencyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: AgencyModel.staticAgencyList.length,
      itemBuilder: (context, index) {
        return AgencyCard(agency: AgencyModel.staticAgencyList[index]);
      },
    );
  }
}

class AgencyCard extends StatelessWidget {
  final AgencyModel agency;

  const AgencyCard({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AgencyDetailScreen(agency: agency),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 7,
            offset: const Offset(0, 2),
            spreadRadius: 1,
            color: Colors.white.withOpacity(0.5),
          ),
        ], borderRadius: BorderRadius.circular(12)),
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
                child: Image.asset(agency.imageUrl),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  agency.name,
                  style: themeBasedStyle(
                      themeProvider, AppStyleText.titleAgencyGridText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
