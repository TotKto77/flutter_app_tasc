import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';

import 'package:flutter_app_tasc/logic/models/articles.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget(
      {super.key, required this.articlesList, required this.themeProvider});

  final List<Article> articlesList;
  final ThemeProvider themeProvider;

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
          String formattedDate =
              formatDate(news.publishedAt, Localizations.localeOf(context));
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullHotArticle(
                      newsArticle: news,
                      themeProvider: themeProvider,
                    ),
                  ));
            },
            child: Container(
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
                    Positioned.fill(
                        child: CachedNetworkImage(
                      imageUrl: news.urlToImage ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Image.asset(
                        AppAssets.images.nullDataUrl,
                        fit: BoxFit.cover,
                      ),
                    )),
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
                                    color: AppColors.backgroundLight,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  formattedDate,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.backgroundLight,
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
            ),
          );
        },
      ),
    );
  }
}
