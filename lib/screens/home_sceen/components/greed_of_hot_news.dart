import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:provider/provider.dart';

class GridHotNews extends StatelessWidget {
  final List<Article>? hotnewsList;

  const GridHotNews({
    super.key,
    required this.hotnewsList,
    //required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final int itemCount = hotnewsList?.length ?? 0;
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        if (hotnewsList != null) {
          final Article news = hotnewsList![index];

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
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.4,
                    child: CachedNetworkImage(
                      imageUrl: news.urlToImage ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Image.asset(
                        AppAssets.images.nullDataUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          news.title ?? '',
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.titleGredText),
                          maxLines: 3,
                        ),
                        const CustomDividerWithDot(),
                        Text(
                          news.source?.name ?? '',
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.comentGredText),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          formattedDate,
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.comentGredText),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class CustomDividerWithDot extends StatelessWidget {
  const CustomDividerWithDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.separatorColor,
              thickness: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 6,
            decoration: BoxDecoration(
              color: AppColors.separatorColor,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
          const Expanded(
            child: Divider(
              color: AppColors.separatorColor,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
