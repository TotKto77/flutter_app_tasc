import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/networking/dio/dio_client.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/repo/home_page_repo.dart';
import 'package:flutter_app_tasc/common/widgets/full_hot_article_sceen.dart';

import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/bloc/agency_detailed_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AgencyDetailScreen extends StatelessWidget {
  // final List<Source>? sourcesList;

  const AgencyDetailScreen({
    super.key,
    // required this.sourcesList,
    required this.sourceId,
    required this.source,
  });

  final String sourceId;

  final Source source;

  @override
  Widget build(BuildContext context) {
    // Фильтрация публикаций
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioClient()),
        RepositoryProvider(
          create: (context) => HomePageRepo(
            dioClient: RepositoryProvider.of<DioClient>(context),
          ),
        ),
      ],
      child: BlocProvider<AgencyDetailedBloc>(
        create: (context) => AgencyDetailedBloc(context.read<HomePageRepo>()
            // RepositoryProvider.of<HomePageRepo>(context),
            )
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
                      background: Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 75.0),
                          width: 75,
                          height: 75,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage:
                                AssetImage(AppAssets.images.standardLogo),
                            backgroundColor: Colors.transparent,
                          )),
                      centerTitle: true,
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(source.name ?? '',
                            style: AppStyleText.mainText),
                      ),
                    ),
                  ),
                  //DetailPublicationSList(filteredPublications: filteredPublications),
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
                                            height: 150,
                                            fit: BoxFit.cover,
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
