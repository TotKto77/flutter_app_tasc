import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchResultsList extends StatelessWidget {
  final ThemeProvider themeProvider;
  final List<Article>? searchResults;
  final bool isInitial;
  final bool isError;
  final String errorMessage;

  const SearchResultsList({
    Key? key,
    required this.searchResults,
    required this.themeProvider,
    this.isInitial = false,
    this.isError = false,
    this.errorMessage = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isInitial) {
      return Container(
        height: 300,
        padding: const EdgeInsetsDirectional.fromSTEB(16, 60, 16, 25),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          AppAssets.images.errorImagi,
          fit: BoxFit.contain,
        ),
      );
    }

    if (searchResults == null || searchResults!.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text(
              AppLocalizations.of(context)?.noresults ?? '',
              style: themeBasedStyle(
                  themeProvider, AppStyleText.tcontendListDetail),
            ),
          ),
        ),
      );
    }

    if (isError) {
      return SliverToBoxAdapter(
        child: Center(
          child: Text(
            AppLocalizations.of(context)?.error ?? ' :$errorMessage',
            style: const TextStyle(fontSize: 18.0, color: AppColors.alertText),
          ),
        ),
      );
    }

    return SliverList.builder(
      itemCount: searchResults!.length,
      itemBuilder: (context, index) {
        final article = searchResults![index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullHotArticle(
                    newsArticle: article,
                  ),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
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
                  article.urlToImage != null
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
            ),
          ),
        );
      },
    );
  }
}
