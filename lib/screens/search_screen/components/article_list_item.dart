import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';

class SearchResultsList extends StatelessWidget {
  final ThemeProvider themeProvider;
  final List<Article> searchResults;

  const SearchResultsList({
    Key? key,
    required this.searchResults,
    required this.themeProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final article = searchResults[index];
        return Card(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(article.title ?? '',
                          style: themeBasedStyle(
                              themeProvider, AppStyleText.titListDetail)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        getTextBeforeTripleDots(article.content ?? ''),
                        style: themeBasedStyle(
                            themeProvider, AppStyleText.tcontendListDetail),
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              article.urlToImage !=
                      null // Проверка на null перед созданием виджета
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Image.network(
                          article.urlToImage!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : Expanded(
                      child: Image.asset(AppAssets.images.nullDataUrl),
                    ),
            ],
          ),
        );
      },
    );
  }
}
