import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/logic/models/publication_model.dart';

class FullArticle extends StatelessWidget {
  final Publication publication;
  final List<Publication> allPublications;
  final int currentIndex;
  const FullArticle(
      {super.key,
      required this.publication,
      required this.allPublications,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(publication.title, style: AppStyleText.mainText),
            ),
            pinned: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  padding: const EdgeInsets.only(top: 120),
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    publication.imageAsset,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 0, 16),
                      child: Text(
                        'about ${DateTime.now().difference(publication.datePublished).inHours} hours ago',
                        style: AppStyleText.dateFullArticle,
                        textAlign: TextAlign.left,
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Text(publication.title,
                        style: AppStyleText.titleFullArticle),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Text(publication.content,
                        style: AppStyleText.contendArticle),
                  ),
                  if (currentIndex < allPublications.length - 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullArticle(
                                publication: allPublications[currentIndex + 1],
                                allPublications: allPublications,
                                currentIndex: currentIndex + 1,
                              ),
                            ),
                          );
                        },
                        child: const Text(' Next Article'),
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
