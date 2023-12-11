import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';

class NewsModel {
  final String title;
  final String imageUrl;
  final String source;
  final String timeAgo;

  NewsModel({
    required this.title,
    required this.imageUrl,
    required this.source,
    required this.timeAgo,
  });

  static List<NewsModel> staticNewsList = [
    NewsModel(
      title: 'Tech conference to be held virtually this year',
      imageUrl: AppAssets.images.standardNwes,
      source: 'Tech News',
      timeAgo: '2h ago',
    ),
    NewsModel(
      title: 'New environmental policies introduced',
      imageUrl: AppAssets.images.standardNwes,
      source: 'Environment News',
      timeAgo: '3h ago',
    ),
    NewsModel(
      title: 'Local sports team wins championship',
      imageUrl: AppAssets.images.standardNwes,
      source: 'Sports News',
      timeAgo: '5h ago',
    ),
    NewsModel(
      title: 'Celebrated author releases new book',
      imageUrl: AppAssets.images.standardNwes,
      source: 'Culture News',
      timeAgo: '40h ago',
    ),
  ];
}
