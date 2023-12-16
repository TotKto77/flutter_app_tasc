import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:intl/intl.dart';

class GridHotNews extends StatelessWidget {
  final List<Article>? hotnewsList;
  final ThemeProvider themeProvider;

  const GridHotNews({
    super.key,
    required this.hotnewsList,
    required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    final int itemCount = hotnewsList?.length ?? 0;
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        if (hotnewsList != null) {
          final Article news = hotnewsList![index];
          // Остальной код по созданию карточки
          final String formattedDate = DateFormat('yyyy MM dd - kk:mm').format(
            DateTime.parse(news.publishedAt ?? ''),
          );
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
                    aspectRatio: 1.5,
                    child: Image.network(
                      news.urlToImage ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          // Возвращаем пустой контейнер, если список равен null
          return SizedBox.shrink();
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
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
          const Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
