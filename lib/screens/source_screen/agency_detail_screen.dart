import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';
import 'package:flutter_app_tasc/logic/models/publication_model.dart';

class AgencyDetailScreen extends StatelessWidget {
  final AgencyModel agency;

  const AgencyDetailScreen({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    // Фильтрация публикаций
    List<Publication> filteredPublications = Publication.publicationsFor
        .where((publication) => publication.agencyId == agency.id)
        .toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppClor.background,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 75.0),
                  width: 75,
                  height: 75,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage(agency.imageUrl),
                    backgroundColor: Colors.transparent,
                  )),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(agency.name, style: AppStyleText.mainText),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Publication publication = filteredPublications[index];
                return Container(
                  color: Colors.white,
                  height: 150,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(publication.title),
                    subtitle: Text(publication.content),
                    leading: Image.asset(publication.imageAsset,
                        fit: BoxFit.fitHeight),
                  ),
                );
              },
              childCount: filteredPublications.length,
            ),
          ),
        ],
      ),
    );
  }
}
