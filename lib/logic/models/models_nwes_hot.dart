import 'package:flutter_app_tasc/common/app_assets/app_assets.dart';

class HotNewsModel {
  final String assetImagePath;
  final String title;
  final String sourceWebsite;
  final String publicationTime;

  HotNewsModel({
    required this.assetImagePath,
    required this.title,
    required this.sourceWebsite,
    required this.publicationTime,
  });
  static List<HotNewsModel> staticNewsList = [
    HotNewsModel(
      title: 'Breaking News: Major Tech Company Announces New Product Line',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'technews.com',
      publicationTime: '2h ago',
    ),
    HotNewsModel(
      title: 'Environmentalists Celebrate New Legislation to Protect Wildlife',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'environmentnews.com',
      publicationTime: '3h ago',
    ),
    HotNewsModel(
      title: 'Local Sports Team Wins Championship in Overtime Thriller',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'sportsnews.com',
      publicationTime: '5h ago',
    ),
    HotNewsModel(
      title: 'Acclaimed Author Releases Highly Anticipated Novel',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'culturenews.com',
      publicationTime: '40h ago',
    ),
    HotNewsModel(
      title: 'New Scientific Discovery Promises to Change the World',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'sciencenews.com',
      publicationTime: '1d ago',
    ),
    HotNewsModel(
      title: 'Global Economy Shows Signs of Recovery After Recession',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'economicsnews.com',
      publicationTime: '2d ago',
    ),
    HotNewsModel(
      title: 'Movie Industry Prepares for Awards Season',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'entertainmentnews.com',
      publicationTime: '3d ago',
    ),
    HotNewsModel(
      title: 'Health Experts Offer Tips for Staying Fit and Healthy',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'healthnews.com',
      publicationTime: '4d ago',
    ),
    HotNewsModel(
      title: 'Space Exploration: New Mission to Mars Launches Successfully',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'spacenews.com',
      publicationTime: '5d ago',
    ),
    HotNewsModel(
      title: 'Latest Fashion Trends: What to Wear This Season',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'fashionnews.com',
      publicationTime: '6d ago',
    ),
    HotNewsModel(
      title: 'Foodies Rejoice: New Restaurant Opens in the City',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'foodnews.com',
      publicationTime: '1w ago',
    ),
    HotNewsModel(
      title: 'Tech Innovations: A Look at the Future of Gadgets',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'technews.com',
      publicationTime: '2w ago',
    ),
    HotNewsModel(
      title: 'Music Lovers Unite: Upcoming Music Festival Lineup Revealed',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'musicnews.com',
      publicationTime: '2w ago',
    ),
    HotNewsModel(
      title: 'Education Matters: New Initiatives Aim to Improve Schools',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'educationnews.com',
      publicationTime: '3w ago',
    ),
    HotNewsModel(
      title: 'Travel Enthusiasts: Discover the Hidden Gems of the World',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'travelnews.com',
      publicationTime: '3w ago',
    ),
    HotNewsModel(
      title: 'Business World: Insights from Top CEOs and Entrepreneurs',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'businessnews.com',
      publicationTime: '4w ago',
    ),
    HotNewsModel(
      title: 'New Video Game Release: Gamers Await Exciting Adventures',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'gamingnews.com',
      publicationTime: '4w ago',
    ),
    HotNewsModel(
      title: 'Environmental Initiatives: Companies Commit to Sustainability',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'environmentnews.com',
      publicationTime: '5w ago',
    ),
    HotNewsModel(
      title: 'Sports Fans Rejoice: Championship Matches Set to Thrill',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'sportsnews.com',
      publicationTime: '5w ago',
    ),
    HotNewsModel(
      title: 'Cultural Highlights: Art, Music, and Theater Events in the City',
      assetImagePath: AppAssets.images.standardHot,
      sourceWebsite: 'culturenews.com',
      publicationTime: '6w ago',
    ),
  ];
}
