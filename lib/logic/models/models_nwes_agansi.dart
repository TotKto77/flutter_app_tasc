import 'package:flutter_app_tasc/common/app_assets/app_assets.dart';

class AgencyModel {
  final String name;
  final String type;
  final String imageUrl;

  AgencyModel({
    required this.name,
    required this.type,
    required this.imageUrl,
  });

  static List<AgencyModel> staticAgencyList = [
    AgencyModel(
      name: "BBC",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Al Jazeera",
      type: "International",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "CNN",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Fox News",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "The New York Times",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "The Guardian",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Reuters",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Bloomberg",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "ESPN",
      type: "Sports",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Sky Sports",
      type: "Sports",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "TechCrunch",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Wired",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "National Geographic",
      type: "Documentary",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "The Verge",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Vogue",
      type: "Fashion",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "GQ",
      type: "Lifestyle",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "Politico",
      type: "Political",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "BuzzFeed News",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "VICE News",
      type: "Alternative",
      imageUrl: AppAssets.images.standardLogo,
    ),
    AgencyModel(
      name: "The Economist",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
    )
  ];
}
