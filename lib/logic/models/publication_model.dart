import 'package:flutter_app_tasc/common/app_assets/app_assets.dart';

class Publication {
  final String id;
  final String agencyId;
  final String title;
  final String content;
  final DateTime datePublished;
  final String imageAsset;

  Publication(
      {required this.id,
      required this.agencyId,
      required this.title,
      required this.content,
      required this.datePublished,
      required this.imageAsset});

  static List<Publication> publicationsFor = [
    Publication(
      id: '1_1',
      agencyId: '1',
      title: 'Breaking News: Pandas Take Over London!',
      content:
          'In an unexpected turn of events, pandas have taken over the streets of London, causing chaos and cuteness overload.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_2',
      agencyId: '1',
      title: 'Tech Breakthrough: Mind-Reading Headphones',
      content:
          'Scientists have developed headphones that can read your mind and play the music you want to hear without any buttons or voice commands.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_3',
      agencyId: '1',
      title: 'Weather Report: Sunny Skies Ahead',
      content:
          'The weather forecast predicts sunny skies and warm temperatures for the upcoming week.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_4',
      agencyId: '1',
      title: 'Space Exploration: New Mission to Mars',
      content:
          'NASA has announced a new mission to explore Mars and search for signs of past life on the red planet.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_5',
      agencyId: '1',
      title: 'Travel Guide: Hidden Gems in London',
      content:
          'Discover the hidden gems and lesser-known attractions of London for your next travel adventure.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_6',
      agencyId: '1',
      title: 'Health Tips: Stay Active and Fit',
      content:
          'Learn how to stay active and maintain your fitness with these expert health tips.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_7',
      agencyId: '1',
      title: 'Entertainment News: Movie Premieres',
      content:
          'Get the latest updates on upcoming movie premieres and star-studded red carpet events.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_8',
      agencyId: '1',
      title: 'Science Breakthrough: Quantum Computing',
      content:
          'Scientists have made a breakthrough in quantum computing that could revolutionize technology.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_9',
      agencyId: '1',
      title: 'Fashion Trends: Fall 2023',
      content:
          'Explore the latest fashion trends for the upcoming fall season and stay stylish.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '1_10',
      agencyId: '1',
      title: 'Travel: Dream Destinations for 2023',
      content:
          'Plan your dream vacation with our list of must-visit destinations for 2023.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_1',
      agencyId: '2',
      title: 'World Leaders Gather for Peace Summit',
      content:
          'Leaders from around the world have come together to discuss global peace and cooperation in the face of rising tensions.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_2',
      agencyId: '2',
      title: 'Exploring the Depths of the Ocean',
      content:
          'A team of scientists has embarked on a deep-sea expedition to uncover the mysteries of the ocean\'s abyssal zone.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_3',
      agencyId: '2',
      title: 'International Relations: Diplomatic Challenges',
      content:
          'Diplomats face new challenges as they navigate complex international relations and conflicts.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_4',
      agencyId: '2',
      title: 'Cultural Exchange: Music and Arts Festival',
      content:
          'Celebrate cultural diversity with a music and arts festival featuring artists from around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_5',
      agencyId: '2',
      title: 'Travel Spotlight: Hidden Gems in Asia',
      content:
          'Explore the hidden gems and rich cultural heritage of Asia with our travel guide.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_6',
      agencyId: '2',
      title: 'Health Crisis: Pandemic Updates',
      content:
          'Stay informed with the latest updates on the global health crisis and vaccination efforts.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_7',
      agencyId: '2',
      title: 'Technology Trends: AI and Automation',
      content:
          'Explore the latest trends in artificial intelligence and automation shaping industries worldwide.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_8',
      agencyId: '2',
      title: 'Sports Spotlight: Global Sporting Events',
      content:
          'Get updates on major global sporting events and the achievements of athletes from different countries.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_9',
      agencyId: '2',
      title: 'Business Insights: Global Economy',
      content:
          'Stay informed about the state of the global economy and its impact on businesses worldwide.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '2_10',
      agencyId: '2',
      title: 'Human Rights: Advocacy and Challenges',
      content:
          'Learn about human rights advocacy efforts and the challenges faced by activists worldwide.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_1',
      agencyId: '3',
      title: 'Breaking News: Political Developments',
      content:
          'Stay updated on the latest political developments and government decisions from around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_2',
      agencyId: '3',
      title: 'Health and Wellness: Healthy Living Tips',
      content:
          'Learn valuable tips for maintaining a healthy lifestyle and improving your overall well-being.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_3',
      agencyId: '3',
      title: 'Technology News: Innovations and Gadgets',
      content:
          'Discover the latest tech innovations and must-have gadgets that are changing the way we live.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_4',
      agencyId: '3',
      title: 'Entertainment Buzz: Celebrity Updates',
      content:
          'Get the scoop on celebrity news, red carpet events, and the world of entertainment.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_5',
      agencyId: '3',
      title: 'Business Insights: Market Trends',
      content:
          'Stay informed about market trends, financial news, and insights into the business world.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_6',
      agencyId: '3',
      title: 'Travel Destinations: Wanderlust Adventures',
      content:
          'Explore wanderlust-worthy travel destinations and plan your next adventure.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_7',
      agencyId: '3',
      title: 'Science and Discovery: Latest Breakthroughs',
      content:
          'Stay up-to-date with the latest scientific discoveries and breakthroughs in various fields.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_8',
      agencyId: '3',
      title: 'Sports Updates: Scores and Highlights',
      content:
          'Get live scores, highlights, and in-depth analysis of your favorite sports events.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_9',
      agencyId: '3',
      title: 'Education and Learning: Insights for Students',
      content:
          'Find valuable insights and tips for students to excel in their educational journey.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '3_10',
      agencyId: '3',
      title: 'Environment and Sustainability: Green Initiatives',
      content:
          'Learn about environmental conservation efforts and sustainability initiatives around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_1',
      agencyId: '4',
      title: 'Breaking News: National Security Update',
      content:
          'Stay informed about the latest national security updates and measures taken to protect the country.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_2',
      agencyId: '4',
      title: 'Health and Wellness: Staying Fit and Healthy',
      content:
          'Discover tips and advice for maintaining a healthy lifestyle and staying fit.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_3',
      agencyId: '4',
      title: 'Business Insights: Economic Trends',
      content:
          'Get insights into the latest economic trends, market updates, and financial analysis.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_4',
      agencyId: '4',
      title: 'Entertainment Buzz: Celebrity Interviews',
      content:
          'Exclusive celebrity interviews and behind-the-scenes stories from the world of entertainment.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_5',
      agencyId: '4',
      title: 'Travel Destinations: Explore the World',
      content:
          'Plan your next adventure with travel guides and recommendations for exciting destinations.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_6',
      agencyId: '4',
      title: 'Science and Technology: Innovations',
      content:
          'Stay up-to-date with the latest scientific discoveries and technological innovations.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_7',
      agencyId: '4',
      title: 'Sports Updates: Scores and Highlights',
      content:
          'Get live scores, sports highlights, and in-depth analysis of your favorite teams and athletes.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_8',
      agencyId: '4',
      title: 'Opinion: Editorial on Current Affairs',
      content:
          'Explore insightful editorials and opinions on current affairs and global issues.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_9',
      agencyId: '4',
      title: 'Environment and Sustainability: Green Initiatives',
      content:
          'Learn about environmental conservation efforts and sustainability initiatives.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '4_10',
      agencyId: '4',
      title: 'Education Spotlight: Learning Opportunities',
      content:
          'Discover learning opportunities, educational insights, and tips for students and educators.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_1',
      agencyId: '5',
      title: 'Front Page: Top Stories of the Day',
      content:
          'Read the top stories of the day covering politics, business, and more.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_2',
      agencyId: '5',
      title: 'Opinion: Editorial on Global Issues',
      content:
          'Explore thought-provoking opinions and editorials on pressing global issues.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_3',
      agencyId: '5',
      title: 'Business News: Market Insights',
      content:
          'Stay informed about the latest market insights, financial updates, and economic trends.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_4',
      agencyId: '5',
      title: 'Culture and Arts: Creative Expressions',
      content:
          'Explore the world of culture and arts with features on artists, exhibitions, and more.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_5',
      agencyId: '5',
      title: 'Travel Exploration: Destinations Unveiled',
      content:
          'Embark on a journey of travel exploration with hidden gems and adventure destinations.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_6',
      agencyId: '5',
      title: 'Science and Technology: Innovations',
      content:
          'Stay updated with the latest scientific breakthroughs and technological innovations.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_7',
      agencyId: '5',
      title: 'Sports World: Game Changers',
      content:
          'Catch up on the latest sports events, game highlights, and athlete profiles.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_8',
      agencyId: '5',
      title: 'Education Insights: Learning Opportunities',
      content:
          'Discover valuable insights and educational opportunities for students and educators.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_9',
      agencyId: '5',
      title: 'Environment and Sustainability: Green Initiatives',
      content:
          'Learn about environmental conservation efforts and sustainability initiatives worldwide.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '5_10',
      agencyId: '5',
      title: 'Health and Wellness: Healthy Living Tips',
      content:
          'Get tips and advice for a healthy lifestyle and overall well-being.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_1',
      agencyId: '6',
      title: 'Breaking News: Global Headlines',
      content:
          'Stay updated on global headlines, international affairs, and geopolitical developments.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_2',
      agencyId: '6',
      title: 'Arts and Culture: Creative Expressions',
      content:
          'Explore the world of arts and culture with features on artists, exhibitions, and more.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_3',
      agencyId: '6',
      title: 'Environment Watch: Conservation Efforts',
      content:
          'Learn about environmental conservation efforts, wildlife preservation, and sustainability initiatives.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_4',
      agencyId: '6',
      title: 'Technology Insights: Innovation Trends',
      content:
          'Stay informed about the latest technology trends, innovations, and gadgets.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_5',
      agencyId: '6',
      title: 'Travel Discoveries: Hidden Gems',
      content:
          'Discover hidden gems and unique travel destinations for your next adventure.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_6',
      agencyId: '6',
      title: 'Science and Discovery: New Horizons',
      content:
          'Explore the latest scientific discoveries and breakthroughs in various fields of study.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_7',
      agencyId: '6',
      title: 'Entertainment Buzz: Celebrity Updates',
      content:
          'Get the latest entertainment news, celebrity updates, and red carpet events coverage.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_8',
      agencyId: '6',
      title: 'Business World: Market Analysis',
      content:
          'Stay informed about market analysis, financial reports, and business strategies.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_9',
      agencyId: '6',
      title: 'Education Insights: Learning Trends',
      content:
          'Explore learning trends, educational innovations, and insights for students and educators.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '6_10',
      agencyId: '6',
      title: 'Health and Wellness: Healthy Living Tips',
      content:
          'Get tips for maintaining a healthy lifestyle and improving overall well-being.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_1',
      agencyId: '7',
      title: 'Financial News: Market Analysis',
      content:
          'Get in-depth market analysis, stock market updates, and financial insights.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_2',
      agencyId: '7',
      title: 'Business Insights: Economic Trends',
      content:
          'Stay informed about the latest economic trends, business strategies, and global markets.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_3',
      agencyId: '7',
      title: 'Investment Guide: Smart Investment Tips',
      content:
          'Learn about smart investment tips, portfolio management, and investment opportunities.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_4',
      agencyId: '7',
      title: 'Technology and Finance: Fintech Innovations',
      content:
          'Explore fintech innovations and their impact on the financial industry.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_5',
      agencyId: '7',
      title: 'International Business: Global Markets',
      content:
          'Stay updated on international business news, trade agreements, and global market developments.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_6',
      agencyId: '7',
      title: 'Economic Analysis: Economic Indicators',
      content:
          'Get insights into economic indicators, inflation rates, and economic forecasts.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_7',
      agencyId: '7',
      title: 'Financial Planning: Wealth Management',
      content:
          'Learn about wealth management strategies, financial planning, and retirement planning.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_8',
      agencyId: '7',
      title: 'Real Estate Trends: Property Insights',
      content:
          'Stay informed about real estate trends, property market analysis, and investment opportunities.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_9',
      agencyId: '7',
      title: 'Energy and Commodities: Market Updates',
      content:
          'Get updates on energy markets, commodities trading, and natural resources.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '7_10',
      agencyId: '7',
      title: 'Financial Education: Investment Basics',
      content:
          'Explore the basics of investments, financial education, and investment strategies for beginners.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_1',
      agencyId: '8',
      title: 'Financial Markets: Latest Updates',
      content:
          'Get the latest updates on financial markets, stock trading, and investment strategies.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_2',
      agencyId: '8',
      title: 'Business Trends: Industry Insights',
      content:
          'Stay informed about business trends, industry insights, and corporate developments.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_3',
      agencyId: '8',
      title: 'Investors Guide: Smart Investment Tips',
      content:
          'Learn about smart investment tips, portfolio management, and investment opportunities.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_4',
      agencyId: '8',
      title: 'Finance and Technology: Fintech Innovations',
      content:
          'Explore fintech innovations and their impact on the financial industry.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_5',
      agencyId: '8',
      title: 'Global Business: Market Insights',
      content:
          'Stay updated on global business news, trade agreements, and market developments.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_6',
      agencyId: '8',
      title: 'Economic Analysis: Economic Indicators',
      content:
          'Get insights into economic indicators, inflation rates, and economic forecasts.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_7',
      agencyId: '8',
      title: 'Wealth Management: Financial Planning',
      content:
          'Learn about wealth management strategies, financial planning, and retirement planning.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_8',
      agencyId: '8',
      title: 'Real Estate Trends: Property Insights',
      content:
          'Stay informed about real estate trends, property market analysis, and investment opportunities.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_9',
      agencyId: '8',
      title: 'Energy Markets: Market Updates',
      content:
          'Get updates on energy markets, commodities trading, and natural resources.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '8_10',
      agencyId: '8',
      title: 'Financial Education: Investment Basics',
      content:
          'Explore the basics of investments, financial education, and investment strategies for beginners.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_1',
      agencyId: '9',
      title: 'Sports Highlights: Game Winning Moments',
      content:
          'Relive the thrilling game-winning moments from recent sports events.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_2',
      agencyId: '9',
      title: 'Athlete Spotlight: Rising Stars',
      content:
          'Discover the rising stars in the world of sports and their incredible journeys to success.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_3',
      agencyId: '9',
      title: 'Team Dynamics: Behind-the-Scenes Insights',
      content:
          'Get behind-the-scenes insights into team dynamics, training, and camaraderie.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_4',
      agencyId: '9',
      title: 'Sports Analysis: Game Strategies',
      content:
          'Analyze game strategies, tactics, and expert insights from sports analysts.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_5',
      agencyId: '9',
      title: 'Sports History: Iconic Moments',
      content:
          'Explore iconic moments in sports history and their lasting impact on the world of athletics.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_6',
      agencyId: '9',
      title: 'Fitness and Training: Pro Tips',
      content:
          'Get pro tips on fitness, training, and achieving peak athletic performance.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_7',
      agencyId: '9',
      title: 'Sports Culture: Fan Stories',
      content:
          'Read inspiring fan stories, traditions, and the culture surrounding sports.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_8',
      agencyId: '9',
      title: 'Athlete Interviews: Exclusive Conversations',
      content:
          'Enjoy exclusive interviews with athletes from various sports disciplines.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_9',
      agencyId: '9',
      title: 'Sports Science: Performance Insights',
      content:
          'Dive into the science behind sports performance and the latest research findings.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '9_10',
      agencyId: '9',
      title: 'Sports and Lifestyle: Balance and Wellness',
      content:
          'Discover the balance between sports and lifestyle, focusing on wellness and health.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_1',
      agencyId: '10',
      title: 'Football Highlights: Goals Galore',
      content:
          'Relive the excitement with the most spectacular football goals from recent matches.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_2',
      agencyId: '10',
      title: 'Cricket Update: Match Analysis',
      content:
          'Get in-depth match analysis, player performances, and cricket updates.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_3',
      agencyId: '10',
      title: 'Formula 1: Race Insights',
      content:
          'Stay updated on Formula 1 races, driver standings, and race insights.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_4',
      agencyId: '10',
      title: 'Golf Masters: Tournament Highlights',
      content:
          'Experience the highlights of golf tournaments and the journey of top golfers.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_5',
      agencyId: '10',
      title: 'Sports Betting: Expert Tips',
      content:
          'Get expert tips and insights into sports betting and odds analysis.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_6',
      agencyId: '10',
      title: 'Tennis Championships: Match Highlights',
      content:
          'Watch the thrilling highlights of tennis championships and memorable matches.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_7',
      agencyId: '10',
      title: 'Extreme Sports: Adrenaline Rush',
      content:
          'Experience the adrenaline rush with extreme sports and daring adventures.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_8',
      agencyId: '10',
      title: 'Sports Science: Performance Insights',
      content:
          'Dive into the science behind sports performance and the latest research findings.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_9',
      agencyId: '10',
      title: 'Sports and Lifestyle: Balance and Wellness',
      content:
          'Discover the balance between sports and lifestyle, focusing on wellness and health.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '10_10',
      agencyId: '10',
      title: 'Athlete Interviews: Exclusive Conversations',
      content:
          'Enjoy exclusive interviews with athletes from various sports disciplines.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_1',
      agencyId: '11',
      title: 'Tech Innovations: Future Technologies',
      content:
          'Explore future technologies, innovations, and the impact on our lives.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_2',
      agencyId: '11',
      title: 'Startup Stories: Success and Challenges',
      content:
          'Read inspiring startup stories, challenges faced, and lessons learned.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_3',
      agencyId: '11',
      title: 'Gadget Reviews: Latest Gadgets',
      content:
          'Get reviews and insights on the latest gadgets and consumer electronics.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_4',
      agencyId: '11',
      title: 'Artificial Intelligence: AI Breakthroughs',
      content:
          'Discover AI breakthroughs, machine learning advancements, and AI applications.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_5',
      agencyId: '11',
      title: 'Cybersecurity: Online Safety Tips',
      content:
          'Learn about online safety tips, cybersecurity threats, and protecting your digital life.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_6',
      agencyId: '11',
      title: 'Tech Events: Conference Highlights',
      content:
          'Stay updated on tech events, conference highlights, and industry networking.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_7',
      agencyId: '11',
      title: 'Tech Trends: Industry Insights',
      content:
          'Explore industry insights, tech trends, and future predictions in the tech world.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_8',
      agencyId: '11',
      title: 'Software Development: Coding Tips',
      content:
          'Get coding tips, software development best practices, and programming tutorials.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_9',
      agencyId: '11',
      title: 'Tech Gadgets: Must-Have Devices',
      content:
          'Discover must-have tech gadgets, accessories, and gear for tech enthusiasts.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '11_10',
      agencyId: '11',
      title: 'Tech Ethics: Ethical Technology',
      content:
          'Explore ethical technology discussions, debates, and the impact on society.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_1',
      agencyId: '12',
      title: 'Tech Trends: Future Innovations',
      content:
          'Explore future tech trends, innovations, and their impact on society.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_2',
      agencyId: '12',
      title: 'Gadget Reviews: Latest Tech Gadgets',
      content:
          'Get in-depth reviews of the latest tech gadgets and consumer electronics.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_3',
      agencyId: '12',
      title: 'AI Insights: Machine Learning Breakthroughs',
      content:
          'Discover machine learning breakthroughs and AI insights from leading experts.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_4',
      agencyId: '12',
      title: 'Cybersecurity: Protecting Your Data',
      content:
          'Learn about cybersecurity measures, data protection, and online safety.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_5',
      agencyId: '12',
      title: 'Tech Culture: Industry Insights',
      content:
          'Explore insights into the tech culture, industry trends, and innovations.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_6',
      agencyId: '12',
      title: 'Software Development: Coding Tips',
      content:
          'Get coding tips, software development best practices, and programming tutorials.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_7',
      agencyId: '12',
      title: 'Tech Ethics: Ethical Technology',
      content:
          'Join the discussion on ethical technology, privacy, and digital ethics.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_8',
      agencyId: '12',
      title: 'Science Breakthroughs: New Discoveries',
      content:
          'Stay updated on recent science breakthroughs, discoveries, and advancements.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_9',
      agencyId: '12',
      title: 'Tech Events: Conference Highlights',
      content:
          'Get highlights and insights from top tech conferences and industry events.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '12_10',
      agencyId: '12',
      title: 'Tech Trends: Future of Innovation',
      content:
          'Explore the future of innovation, emerging tech trends, and their potential impact.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_1',
      agencyId: '13',
      title: 'Wildlife Expedition: Journey into the Jungle',
      content:
          'Join us on an exciting wildlife expedition deep into the heart of the jungle.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_2',
      agencyId: '13',
      title: 'Documentary Series: Planet Earth',
      content:
          'Explore the wonders of our planet with the critically acclaimed "Planet Earth" documentary series.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_3',
      agencyId: '13',
      title: 'Underwater Discovery: Hidden Treasures',
      content:
          'Dive deep into the ocean to uncover hidden treasures and mysterious marine life.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_4',
      agencyId: '13',
      title: 'Wildlife Photography: Capturing the Moment',
      content:
          'Learn the art of wildlife photography and capturing the perfect moment in the wild.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_5',
      agencyId: '13',
      title: 'Natural Wonders: Spectacular Landscapes',
      content:
          'Discover the most breathtaking natural wonders and stunning landscapes on Earth.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_6',
      agencyId: '13',
      title: 'Conservation Efforts: Protecting Wildlife',
      content:
          'Learn about conservation efforts and initiatives aimed at protecting wildlife species.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_7',
      agencyId: '13',
      title: 'Behind the Scenes: Filming Wildlife',
      content:
          'Get an exclusive look behind the scenes of wildlife documentary filmmaking.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_8',
      agencyId: '13',
      title: 'Earths Treasures: Gemstone Exploration',
      content:
          'Explore the world of precious gemstones and the journey of their discovery.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_9',
      agencyId: '13',
      title: 'Aerial Adventures: Flying Over Landscapes',
      content:
          'Embark on thrilling aerial adventures and witness stunning landscapes from the sky.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '13_10',
      agencyId: '13',
      title: 'Wildlife Conservation Heroes: Inspiring Stories',
      content:
          'Meet the heroes of wildlife conservation and their inspiring stories of dedication.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_1',
      agencyId: '14',
      title: 'Tech Gadgets: Must-Have Devices',
      content:
          'Discover the latest must-have tech gadgets and accessories for tech enthusiasts.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_2',
      agencyId: '14',
      title: 'Tech Reviews: Product Insights',
      content:
          'Get in-depth product reviews and insights on the latest tech offerings.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_3',
      agencyId: '14',
      title: 'Future Tech: Emerging Innovations',
      content:
          'Explore emerging tech innovations and their potential impact on the future.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_4',
      agencyId: '14',
      title: 'Software Development: Coding Tutorials',
      content:
          'Learn coding through step-by-step tutorials and software development guides.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_5',
      agencyId: '14',
      title: 'Cybersecurity: Protecting Your Digital Life',
      content:
          'Stay safe online with tips and insights on cybersecurity and digital privacy.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_6',
      agencyId: '14',
      title: 'Tech Events: Conference Highlights',
      content:
          'Get highlights and coverage of top tech conferences and industry events.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_7',
      agencyId: '14',
      title: 'AI Breakthroughs: Machine Learning Advancements',
      content:
          'Discover the latest machine learning advancements and AI breakthroughs.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_8',
      agencyId: '14',
      title: 'Tech Culture: Industry Insights',
      content:
          'Explore insights into the tech culture, industry trends, and innovations.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_9',
      agencyId: '14',
      title: 'Science and Technology: Latest Discoveries',
      content:
          'Stay updated on the latest discoveries in the fields of science and technology.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '14_10',
      agencyId: '14',
      title: 'Tech Ethics: Ethical Technology Debates',
      content:
          'Join the debates on ethical technology, digital ethics, and privacy concerns.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_1',
      agencyId: '15',
      title: 'Fashion Trends: Seasonal Styles',
      content:
          'Explore the latest seasonal fashion trends and style inspirations.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_2',
      agencyId: '15',
      title: 'Celebrity Fashion: Red Carpet Glamour',
      content:
          'Get an inside look at celebrity fashion, red carpet glamour, and style icons.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_3',
      agencyId: '15',
      title: 'Fashion Photography: Art of Expression',
      content:
          'Discover the art of fashion photography and its role in the world of fashion.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_4',
      agencyId: '15',
      title: 'Designer Spotlight: Creative Visionaries',
      content:
          'Explore the creative visionaries behind top fashion designer brands.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_5',
      agencyId: '15',
      title: 'Fashion Accessories: Stylish Additions',
      content:
          'Discover stylish fashion accessories that elevate your outfit and style.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_6',
      agencyId: '15',
      title: 'Beauty Trends: Makeup and Skincare',
      content:
          'Stay updated on the latest beauty trends, makeup tips, and skincare routines.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_7',
      agencyId: '15',
      title: 'Fashion Shows: Runway Highlights',
      content:
          'Get front-row access to the latest fashion shows and runway highlights.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_8',
      agencyId: '15',
      title: 'Fashion Icons: Style Legends',
      content:
          'Learn about the style legends and fashion icons who have shaped the industry.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_9',
      agencyId: '15',
      title: 'Fashion Editorials: Creative Editorials',
      content:
          'Explore creative fashion editorials and photo shoots that push boundaries.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '15_10',
      agencyId: '15',
      title: 'Fashion Lifestyle: Elegant Living',
      content:
          'Embrace an elegant lifestyle with fashion tips and luxury living inspirations.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_1',
      agencyId: '16',
      title: 'Lifestyle Tips: Healthy Living',
      content:
          'Discover tips and strategies for leading a healthy and balanced lifestyle.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_2',
      agencyId: '16',
      title: 'Travel Adventures: Exploring the World',
      content:
          'Embark on travel adventures to explore new destinations and cultures around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_3',
      agencyId: '16',
      title: 'Mens Fashion: Style Essentials',
      content: 'Stay stylish with essential fashion tips and insights for men.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_4',
      agencyId: '16',
      title: 'Luxury Lifestyle: Living in Luxury',
      content:
          'Explore the world of luxury living, from high-end fashion to exotic vacations.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_5',
      agencyId: '16',
      title: 'Culinary Delights: Foodie Adventures',
      content:
          'Indulge in culinary adventures and savor exquisite dishes from around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_6',
      agencyId: '16',
      title: 'Fitness and Wellness: Staying Fit',
      content:
          'Achieve and maintain your fitness goals with expert fitness and wellness advice.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_7',
      agencyId: '16',
      title: 'Grooming Guide: Mens Grooming Tips',
      content: 'Learn essential grooming tips and tricks for the modern man.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_8',
      agencyId: '16',
      title: 'Entertainment: Latest Movie Releases',
      content:
          'Stay updated on the latest movie releases, reviews, and entertainment news.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_9',
      agencyId: '16',
      title: 'Relationship Advice: Love and Dating',
      content:
          'Get expert relationship advice on love, dating, and maintaining healthy relationships.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '16_10',
      agencyId: '16',
      title: 'Mens Lifestyle: Modern Living',
      content:
          'Explore modern living with a focus on men\'s lifestyle, interests, and trends.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_1',
      agencyId: '17',
      title: 'Political Analysis: Election Results',
      content:
          'In-depth analysis of the latest election results and their implications for the nation.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_2',
      agencyId: '17',
      title: 'Policy Debates: Healthcare Reform',
      content:
          'Join the ongoing policy debates on healthcare reform and its impact on society.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_3',
      agencyId: '17',
      title: 'Political Commentary: National Issues',
      content:
          'Read political commentary on pressing national issues and government decisions.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_4',
      agencyId: '17',
      title: 'Legislative Updates: Congressional Bills',
      content:
          'Stay informed about legislative updates and the progress of congressional bills.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_5',
      agencyId: '17',
      title: 'Political Interviews: Leaders Speak',
      content:
          'Exclusive interviews with political leaders discussing their vision and policies.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_6',
      agencyId: '17',
      title: 'Government Analysis: Policy Impact',
      content:
          'Analyze the impact of government policies on various sectors of society.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_7',
      agencyId: '17',
      title: 'Political Campaigns: Strategies Revealed',
      content:
          'Get insights into the strategies and tactics used in political campaigns.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_8',
      agencyId: '17',
      title: 'International Relations: Diplomacy Insights',
      content:
          'Explore diplomacy insights and the dynamics of international relations.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_9',
      agencyId: '17',
      title: 'Political Debates: Controversial Topics',
      content:
          'Engage in political debates on controversial topics that shape public discourse.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '17_10',
      agencyId: '17',
      title: 'Government Policies: Impact Analysis',
      content:
          'Analyze the real-world impact of government policies on citizens and businesses.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_1',
      agencyId: '18',
      title: 'Entertainment Buzz: Celebrity Gossip',
      content:
          'Get the latest celebrity gossip, scandals, and entertainment buzz from Hollywood.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_2',
      agencyId: '18',
      title: 'Pop Culture: Trends and Fads',
      content:
          'Explore the latest trends and fads in pop culture, from fashion to music.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_3',
      agencyId: '18',
      title: 'Movie Reviews: Blockbuster Hits',
      content:
          'Read reviews and critiques of the latest blockbuster movie releases.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_4',
      agencyId: '18',
      title: 'Foodie Adventures: Culinary Delights',
      content:
          'Embark on culinary adventures and savor delicious dishes from around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_5',
      agencyId: '18',
      title: 'Travel Destinations: Wanderlust',
      content:
          'Discover exciting travel destinations and plan your next adventure with wanderlust.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_6',
      agencyId: '18',
      title: 'Tech Trends: Gadgets and Gizmos',
      content:
          'Stay updated on the latest tech trends, gadgets, and innovative gizmos.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_7',
      agencyId: '18',
      title: 'Fashion Frenzy: Style Inspiration',
      content:
          'Find style inspiration and fashion tips to keep your wardrobe up-to-date.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_8',
      agencyId: '18',
      title: 'Health and Wellness: Self-Care',
      content: 'Explore self-care practices for better health and well-being.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_9',
      agencyId: '18',
      title: 'Social Media Trends: Viral Content',
      content:
          'Stay in the loop with the latest viral content and social media trends.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '18_10',
      agencyId: '18',
      title: 'Entertainment Spotlight: Showbiz News',
      content:
          'Get a closer look at showbiz news and the entertainment industry.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_1',
      agencyId: '19',
      title: 'Alternative News: Unconventional Stories',
      content:
          'Explore unconventional and alternative news stories that challenge the status quo.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_2',
      agencyId: '19',
      title: 'Subculture Spotlight: Underground Trends',
      content:
          'Dive into underground subcultures and the latest trends shaping them.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_3',
      agencyId: '19',
      title: 'VICE Reports: In-Depth Investigations',
      content:
          'Read in-depth investigative reports on pressing issues and hidden truths.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_4',
      agencyId: '19',
      title: 'Alternative Voices: Counterculture Icons',
      content:
          'Discover counterculture icons and their impact on society and art.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_5',
      agencyId: '19',
      title: 'Offbeat Adventures: Unique Travel',
      content:
          'Embark on offbeat adventures to unique and unconventional travel destinations.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_6',
      agencyId: '19',
      title: 'Underground Music: Indie Bands',
      content:
          'Explore the world of underground and indie music with featured bands and artists.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_7',
      agencyId: '19',
      title: 'Alternative Lifestyle: Unconventional Living',
      content:
          'Delve into alternative lifestyles and unconventional ways of living.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_8',
      agencyId: '19',
      title: 'Subversive Art: Underground Creations',
      content:
          'Explore subversive and underground art creations that challenge norms.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_9',
      agencyId: '19',
      title: 'Cultural Commentary: Unconventional Perspectives',
      content:
          'Gain unconventional perspectives through cultural commentary and analysis.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '19_10',
      agencyId: '19',
      title: 'VICE Exclusives: Unique Stories',
      content:
          'Discover unique and exclusive stories from VICE that you won\'t find anywhere else.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_1',
      agencyId: '20',
      title: 'Financial Insights: Market Trends',
      content:
          'Stay updated on the latest market trends and financial insights.',
      datePublished: DateTime.now().subtract(Duration(days: 1)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_2',
      agencyId: '20',
      title: 'Economic Analysis: Global Economy',
      content:
          'Read in-depth economic analysis of the global economy and its challenges.',
      datePublished: DateTime.now().subtract(Duration(days: 2)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_3',
      agencyId: '20',
      title: 'Investment Strategies: Wealth Management',
      content:
          'Explore investment strategies and wealth management tips for financial success.',
      datePublished: DateTime.now().subtract(Duration(days: 3)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_4',
      agencyId: '20',
      title: 'Business News: Corporate Updates',
      content:
          'Get the latest corporate updates and business news from around the world.',
      datePublished: DateTime.now().subtract(Duration(days: 4)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_5',
      agencyId: '20',
      title: 'Stock Market Analysis: Trading Tips',
      content:
          'Learn stock market analysis and trading tips to make informed investment decisions.',
      datePublished: DateTime.now().subtract(Duration(days: 5)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_6',
      agencyId: '20',
      title: 'Financial Planning: Retirement Goals',
      content:
          'Plan for your retirement goals with expert financial planning advice.',
      datePublished: DateTime.now().subtract(Duration(days: 6)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_7',
      agencyId: '20',
      title: 'Currency Exchange: Forex Updates',
      content:
          'Stay informed about currency exchange rates and forex market updates.',
      datePublished: DateTime.now().subtract(Duration(days: 7)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_8',
      agencyId: '20',
      title: 'Financial Technology: Fintech Innovations',
      content:
          'Discover fintech innovations and their impact on the financial industry.',
      datePublished: DateTime.now().subtract(Duration(days: 8)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_9',
      agencyId: '20',
      title: 'Business Trends: Industry Insights',
      content:
          'Explore industry insights and trends shaping the business world.',
      datePublished: DateTime.now().subtract(Duration(days: 9)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
    Publication(
      id: '20_10',
      agencyId: '20',
      title: 'Financial Strategies: Wealth Building',
      content:
          'Build wealth with effective financial strategies and investment advice.',
      datePublished: DateTime.now().subtract(Duration(days: 10)),
      imageAsset: AppAssets.images.stamdardImageNwesList,
    ),
  ];
}
