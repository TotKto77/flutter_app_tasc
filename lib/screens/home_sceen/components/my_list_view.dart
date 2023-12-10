import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';

import 'package:flutter_app_tasc/logic/models/top_headlines_response.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({super.key, required this.articlesList});

  final List<Article> articlesList;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.8);

    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: articlesList.length,
        itemBuilder: (context, index) {
          final news = articlesList[index];
          return Container(
            width: MediaQuery.of(context).size.width * 0.7,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4.0,
              child: Stack(
                children: [
                  // Image.network(
                  //   news.urlToImage != null && news.urlToImage!.isNotEmpty
                  //       ? news.urlToImage!
                  //       : AppAssets.images.nullDataUrl,
                  // ),

                  Image.network(
                    news.urlToImage ?? '',
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            news.title ?? '',
                            style: AppStyleText.titleText,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                news.source?.name ?? '',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                // intl package , DateFormat options
                                news.publishedAt ?? '',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
