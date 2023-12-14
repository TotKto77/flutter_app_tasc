import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/logic/models/hot_news_response.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FullHotArticle extends StatelessWidget {
  final HotArticles newsArticle;

  const FullHotArticle(
      {super.key, required this.newsArticle, required this.themeProvider});
  final ThemeProvider themeProvider;
  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat('yyyy-MM-dd - kk:mm').format(
      DateTime.parse(newsArticle.publishedAt ?? ''),
    );
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: themeProvider.isDarkMode ? Colors.white : Colors.black,
              ), // Иконка кнопки назад
              onPressed: () =>
                  Navigator.of(context).pop(), // Обработчик нажатия
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newsArticle.title ?? 'Article',
                style: themeBasedStyle(themeProvider, AppStyleText.mainText),
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
                child: Image.network(
                  newsArticle.urlToImage ?? '',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 0, 16),
                    child: Text(
                      'Published at: $formattedDate',
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.dateFullArticle),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Text(
                      newsArticle.title ?? '',
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.titleFullArticle),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Text(
                      newsArticle.content ??
                          '', // Убедитесь, что это правильное поле из вашей модели HotArticles
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
    );
  }
}

//
//Логика кнопки вперёд надо переделать 
//
//if (currentIndex < allPublications.length - 1)
//   Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: ElevatedButton(
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => FullArticle(
//               publication: allPublications[currentIndex + 1],
//               allPublications: allPublications,
//               currentIndex: currentIndex + 1,
//             ),
//           ),
//         );
//       },
//       child: const Text(' Next Article'),
//     ),
//   )
