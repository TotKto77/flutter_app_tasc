import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/widgets/language_flag_widget.dart';
import 'package:flutter_app_tasc/common/widgets/languages_picker_widget.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_hot.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/greed_of_hot_nwes.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/list_of_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/my_list_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(AppLocalizations.of(context)?.title ?? ''),
            centerTitle: true,
            leading: LanguageFlagWidget(),
            actions: [LanguagePickerWidget()],
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 60), // Отступ, возможно для статус-бара
          ),
          const SliverToBoxAdapter(
            child: NewsListWidget(),
          ),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(24, 16, 25, 8),
            sliver: SliverToBoxAdapter(
              child: Text(
                "News Agency",
                style: AppStyleText.mainText,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TopChannelsWidget(),
          ),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(24, 16, 25, 8),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Hot News",
                style: AppStyleText.mainText,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1 / 1.5, // Измените это соотношение, если нужно
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                HotNewsModel news = HotNewsModel.staticNewsList[index];
                return GridHotNewsItem(news: news);
              },
              childCount: HotNewsModel.staticNewsList.length,
            ),
          )
        ],
      ),
    );
  }
}
