import 'package:bloc/bloc.dart';
import 'package:flutter_app_tasc/common/repo/home_page_repo.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';
import 'package:meta/meta.dart';

part 'source_screen_event.dart';
part 'source_screen_state.dart';

class SourceScreenBloc extends Bloc<SourceScreenEvent, SourceScreenState> {
  SourceScreenBloc(this.repo) : super(SourceScreenInitial()) {
    on<SourceScreenFetchData>((event, emit) async {
      try {
        emit(SourceScreenLoading());
        final articlesList = await repo.getTopHeadLines();

        final hotnewsList = await repo.getHotNews();

        final sourcesList = await repo.getToSource();
        emit(SourceScreenData(
          articlesList: articlesList.articles ?? [],
          hotnewsList: hotnewsList.articles ?? [],
          sourcesList: sourcesList.sources,
        ));
      } catch (e) {
        print('error: $e');
        emit(SourceScreenError());
      }
    });
  }
  final HomePageRepo repo;
}
