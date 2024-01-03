import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';

part 'source_screen_event.dart';
part 'source_screen_state.dart';

class SourceScreenBloc extends Bloc<SourceScreenEvent, SourceScreenState> {
  final Repository repo;
  List<Source> _allSources = []; // Для хранения полного списка источников

  SourceScreenBloc(this.repo) : super(SourceScreenInitial());

  @override
  Stream<SourceScreenState> mapEventToState(SourceScreenEvent event) async* {
    if (event is SourceScreenFetchData) {
      yield SourceScreenLoading();
      try {
        final articlesList = await repo.getTopHeadLines();
        final hotnewsList = await repo.getHotNews();
        final sourcesList = await repo.getToSource();
        _allSources =
            sourcesList.sources; // Сохранение полный список источников
        yield SourceScreenData(
          filterText: "",
          articlesList: articlesList.articles ?? [],
          hotnewsList: hotnewsList.articles ?? [],
          sourcesList: _allSources,
          isFilterApplied: false, // Изначально фильтр не применен
        );
      } catch (e) {
        print('error: $e');
        yield SourceScreenError();
      }
    } else if (event is SourceScreenUpdateFilter) {
      final currentState = state;
      if (currentState is SourceScreenData) {
        final filteredSourcesList = _allSources.where((source) {
          return source.name
                  ?.toLowerCase()
                  .contains(event.filterText.toLowerCase()) ??
              false;
        }).toList();
        yield currentState.copyWith(
            filterText: event.filterText,
            sourcesList: filteredSourcesList, // Обновленный список источников
            isFilterApplied: true // фильтр применен
            );
      }
    } else if (event is SourceScreenResetFilter) {
      final currentState = state;
      if (currentState is SourceScreenData) {
        // Сброс фильтра и возврат к полному списку
        yield currentState.copyWith(
            filterText: "",
            sourcesList: _allSources, // Возвращаем полный список источников
            isFilterApplied: false // Сброс фильтрации
            );
      }
    }
  }
}
