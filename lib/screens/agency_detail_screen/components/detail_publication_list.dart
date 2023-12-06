import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/logic/models/publication_model.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/components/full_article.dart';

class DetailPublicationSList extends StatelessWidget {
  const DetailPublicationSList({
    super.key,
    required this.filteredPublications,
  });

  final List<Publication> filteredPublications;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          Publication publication = filteredPublications[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullArticle(
                    publication: filteredPublications[index],
                    allPublications: filteredPublications,
                    currentIndex: index,
                  ),
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              publication.title,
                              style: AppStyleText.titleListTextDetails,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'about ${DateTime.now().difference(publication.datePublished).inHours} hours ago',
                                style: AppStyleText.dateSList,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      publication.imageAsset,
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: filteredPublications.length,
      ),
    );
  }
}