import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/logic/models/publication_model.dart';

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
            onTap: () {},
            child: Card(
              clipBehavior: Clip.antiAlias,
              color: AppColors.backgroundLight,
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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                publication.title,
                                style: AppStyleText.titleListTextDetails,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' ${DateTime.now().difference(publication.datePublished).inHours}  ',
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
