import 'package:bloc/bloc.dart';
import 'package:flutter_app_tasc/common/repo/home_page_repo.dart';
import 'package:flutter_app_tasc/logic/models/hot_news_response.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:flutter_app_tasc/logic/models/top_headlines_response.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(this.repo) : super(HomePageInitial()) {
    on<HomePageFetchTopHeadlines>((event, emit) async {
      try {
        emit(HomePageLoading());

        final articlesList = await repo.getTopHeadLines();

        final hotnewsList = await repo.getHotNews();

        final sourcesList = await repo.getToSource();
        emit(HomePageLoadData(
          articlesList: articlesList.articles ?? [],
          hotnewsList: hotnewsList.articles ?? [],
          sourcesList: sourcesList.sources ?? [],
        ));
      } catch (e) {
        print('error: $e');
        emit(HomePageError());
      }
    });
  }

  final HomePageRepo repo;
}
