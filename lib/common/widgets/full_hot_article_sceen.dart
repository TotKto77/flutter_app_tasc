import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FullHotArticle extends StatelessWidget {
  final Article newsArticle;
  final ThemeProvider themeProvider;

  const FullHotArticle(
      {Key? key, required this.newsArticle, required this.themeProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String formattedDate =
        formatDate(newsArticle.publishedAt, Localizations.localeOf(context));
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: themeProvider.isDarkMode
                          ? Colors.white
                          : Colors.black,
                    ), // Иконка кнопки назад
                    onPressed: () =>
                        Navigator.of(context).pop(), // Обработчик нажатия
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      newsArticle.title ?? 'Article',
                      style:
                          themeBasedStyle(themeProvider, AppStyleText.mainText),
                    ),
                  ),
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 350,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      padding: const EdgeInsets.only(top: 120),
                      width: double.infinity,
                      height: double.infinity,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: CachedNetworkImage(
                          imageUrl: newsArticle.urlToImage ?? '',
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 200,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => Image.asset(
                            AppAssets.images.nullDataUrl,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // ...
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 16, 0, 16),
                          child: Text(
                            "${AppLocalizations.of(context)?.publishedAt ?? ''} $formattedDate",
                            style: themeBasedStyle(
                                themeProvider, AppStyleText.dateFullArticle),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: Text(
                            newsArticle.title ?? '',
                            style: themeBasedStyle(
                                themeProvider, AppStyleText.titleFullArticle),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: Text(
                            removeText(newsArticle.content ?? '') ?? '',
                            style: themeBasedStyle(
                                themeProvider, AppStyleText.contendArticle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () async {
                final url = newsArticle.url;
                if (url != null && url.isNotEmpty) {
                  try {
                    launch(url);
                  } catch (e) {
                    print(e);
                  }
                }
              },
              child:
                  Text(AppLocalizations.of(context)?.reaDmore ?? 'Read more'),
            ),
          ),
        ],
      ),
    );
  }
}
