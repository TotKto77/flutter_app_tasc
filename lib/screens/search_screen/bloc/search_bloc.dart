import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final Repository repo;

  SearchBloc(this.repo) : super(SearchInitial()) {
    on<SearchInitiated>((event, emit) async {
      try {
        emit(SearchLoading());
        final searchArticlesList = await repo.getArticleSearch(event.query);
        emit(SearchLoaded(
            searchArticlesList: searchArticlesList.articles ?? []));
      } catch (e) {
        if (kDebugMode) {
          print('error: $e');
        }
        emit(SearchError(e.toString()));
      }
    });
    on<SearchReset>((event, emit) {
      emit(SearchInitial());
    });
  }
}
