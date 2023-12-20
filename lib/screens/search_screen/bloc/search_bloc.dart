import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_app_tasc/common/repo/home_page_repo.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final HomePageRepo repo;

  SearchBloc(this.repo) : super(SearchInitial()) {
    on<SearchInitiated>((event, emit) async {
      try {
        emit(SearchLoading());
        final searchArticlesList = await repo.getArticleSearch(event.query);
        emit(SearchLoaded(
            searchArticlesList: searchArticlesList.articles ?? []));
      } catch (e) {
        emit(SearchError(e.toString()));
      }
    });
  }
}
