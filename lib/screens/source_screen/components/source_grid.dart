import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';

class AgencyCard extends StatelessWidget {
  final AgencyModel agency;

  const AgencyCard({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppClor.background,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              offset: const Offset(0, 2),
              spreadRadius: 1,
              color: Colors.white.withOpacity(0.5),
            ),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 50,
            width: 50,
            alignment: Alignment.center,
            child: Image.asset(agency.imageUrl),
          ), // Предполагается, что это путь к изображению
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              agency.name,
              style: AppStyleText.titleAgencyGridText,
            ),
          ),
        ],
      ),
    );
  }
}

class AgencyGrid extends StatelessWidget {
  const AgencyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: AgencyModel.staticAgencyList.length,
      itemBuilder: (context, index) {
        return AgencyCard(agency: AgencyModel.staticAgencyList[index]);
      },
    );
  }
}
