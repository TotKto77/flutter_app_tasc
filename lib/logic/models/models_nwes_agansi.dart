import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';

class AgencyModel {
  final String id;
  final String name;
  final String type;
  final String imageUrl;

  AgencyModel({
    required this.id,
    required this.name,
    required this.type,
    required this.imageUrl,
  });

  static List<AgencyModel> staticAgencyList = [
    AgencyModel(
      name: "BBC",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '1',
    ),
    AgencyModel(
      name: "Al Jazeera",
      type: "International",
      imageUrl: AppAssets.images.standardLogo,
      id: '2',
    ),
    AgencyModel(
      name: "CNN",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '3',
    ),
    AgencyModel(
      name: "Fox News",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '4',
    ),
    AgencyModel(
      name: "The New York Times",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '5',
    ),
    AgencyModel(
      name: "The Guardian",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '6',
    ),
    AgencyModel(
      name: "Reuters",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
      id: '7',
    ),
    AgencyModel(
      name: "Bloomberg",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
      id: '8',
    ),
    AgencyModel(
      name: "ESPN",
      type: "Sports",
      imageUrl: AppAssets.images.standardLogo,
      id: '9',
    ),
    AgencyModel(
      name: "Sky Sports",
      type: "Sports",
      imageUrl: AppAssets.images.standardLogo,
      id: '10',
    ),
    AgencyModel(
      name: "TechCrunch",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
      id: '11',
    ),
    AgencyModel(
      name: "Wired",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
      id: '12',
    ),
    AgencyModel(
      name: "National Geographic",
      type: "Documentary",
      imageUrl: AppAssets.images.standardLogo,
      id: '13',
    ),
    AgencyModel(
      name: "The Verge",
      type: "Technology",
      imageUrl: AppAssets.images.standardLogo,
      id: '14',
    ),
    AgencyModel(
      name: "Vogue",
      type: "Fashion",
      imageUrl: AppAssets.images.standardLogo,
      id: '15',
    ),
    AgencyModel(
      name: "GQ",
      type: "Lifestyle",
      imageUrl: AppAssets.images.standardLogo,
      id: '16',
    ),
    AgencyModel(
      name: "Politico",
      type: "Political",
      imageUrl: AppAssets.images.standardLogo,
      id: '17',
    ),
    AgencyModel(
      name: "BuzzFeed News",
      type: "General",
      imageUrl: AppAssets.images.standardLogo,
      id: '18',
    ),
    AgencyModel(
      name: "VICE News",
      type: "Alternative",
      imageUrl: AppAssets.images.standardLogo,
      id: '19',
    ),
    AgencyModel(
      name: "The Economist",
      type: "Financial",
      imageUrl: AppAssets.images.standardLogo,
      id: '20',
    )
  ];
}
