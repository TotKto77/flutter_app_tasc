import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_hot.dart';

class GridHotNews extends StatelessWidget {
  const GridHotNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 8),
      // height: 400,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          // Соотношение сторон карточек
          childAspectRatio: (MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.5)),
        ),
        itemCount: HotNewsModel.staticNewsList.length,
        itemBuilder: (context, index) {
          HotNewsModel news = HotNewsModel.staticNewsList[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.5, // Соотношение сторон изображения
                  child: Image.asset(
                    news.assetImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        news.title,
                        style: AppStyleText.titleGredText,
                        maxLines: 3,
                      ),
                      CustomDividerWithDot(),
                      SizedBox(height: 8),
                      Text(
                        news.sourceWebsite,
                        style: AppStyleText.comentGredText,
                      ),
                      Text(
                        news.publicationTime,
                        style: AppStyleText.comentGredText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomDividerWithDot extends StatelessWidget {
  const CustomDividerWithDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            height: 6,
            width: 30,
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
