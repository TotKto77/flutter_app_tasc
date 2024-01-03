import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_and_data_formating.dart';
import 'package:flutter_app_tasc/common/networking/dio/dio_client.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';

import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/bloc/agency_detailed_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AgencyDetailScreen extends StatelessWidget {
  const AgencyDetailScreen({
    super.key,
    required this.sourceId,
    required this.source,
  });

  final String sourceId;

  final Source source;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioClient()),
        RepositoryProvider(
          create: (context) => Repository(
            dioClient: RepositoryProvider.of<DioClient>(context),
          ),
        ),
      ],
      child: BlocProvider<AgencyDetailedBloc>(
        create: (context) => AgencyDetailedBloc(context.read<Repository>())
          ..add(AgencyDetailedFetchData(sourceId: sourceId)),
        child: BlocBuilder<AgencyDetailedBloc, AgencyDetailedState>(
          builder: (context, state) {
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 250.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(bottom: 75.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                    radius: 75,
                                    backgroundImage: AssetImage(
                                        AppAssets.images.standardLogo),
                                    backgroundColor: Colors.transparent),
                              )),
                          Positioned(
                            bottom: 2,
                            child: TextButton(
                              onPressed: () async {
                                final url = source.url;
                                if (url != null && url.isNotEmpty) {
                                  try {
                                    launch(url);
                                  } catch (e) {
                                    print(e);
                                  }
                                }
                              },
                              child: Text(source.url ?? '',
                                  style: AppStyleText.linkStyle),
                            ),
                          )
                        ],
                      ),
                      centerTitle: true,
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(source.name ?? '',
                            style: AppStyleText.mainText),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 10),
                  ),
                  if (state is AgencyDetailedData)
                    SliverList.builder(
                      itemCount: state.listArticles.length,
                      itemBuilder: (context, index) {
                        var article = state.listArticles[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FullHotArticle(
                                    newsArticle: article,
                                    themeProvider: themeProvider,
                                  ),
                                ));
                          },
                          child: Card(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 0, 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(article.title ?? '',
                                            style: themeBasedStyle(
                                                themeProvider,
                                                AppStyleText.titListDetail)),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          getTextBeforeTripleDots(
                                              article.content ?? ''),
                                          style: themeBasedStyle(themeProvider,
                                              AppStyleText.tcontendListDetail),
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
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Image.network(
                                            article.urlToImage!,
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    : Expanded(
                                        child: Image.asset(
                                            AppAssets.images.nullDataUrl),
                                      ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
