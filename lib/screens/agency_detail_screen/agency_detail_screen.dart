import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';
import 'package:flutter_app_tasc/logic/models/publication_model.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/components/detail_publication_list.dart';

class AgencyDetailScreen extends StatelessWidget {
  final List<Source>? sourcesList;

  const AgencyDetailScreen({super.key, required this.sourcesList});

  @override
  Widget build(BuildContext context) {
    // Фильтрация публикаций

    var agency;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(bottom: 75.0),
                  width: 75,
                  height: 75,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage(AppAssets.images.standardLogo),
                    backgroundColor: Colors.transparent,
                  )),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(agency.name, style: AppStyleText.mainText),
              ),
            ),
          ),
          //DetailPublicationSList(filteredPublications: filteredPublications),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
        ],
      ),
    );
  }
}
