import 'package:bloc/bloc.dart';
import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
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
          sourcesList: sourcesList.sources,
        ));
      } catch (e) {
        print('error: $e');
        emit(HomePageError());
      }
    });
  }

  final Repository repo;
}
