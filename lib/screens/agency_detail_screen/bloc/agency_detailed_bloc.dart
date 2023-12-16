import 'package:bloc/bloc.dart';
import 'package:flutter_app_tasc/common/repo/home_page_repo.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:meta/meta.dart';

part 'agency_detailed_event.dart';
part 'agency_detailed_state.dart';

class AgencyDetailedBloc extends Bloc<AgencyDetailedEvent, AgencyDetailedState> {
  AgencyDetailedBloc(this.repo) : super(AgencyDetailedInitial()) {
    on<AgencyDetailedFetchData>(
      (event, emit) async {
        try {
          emit(AgencyDetailedLoading());

          final listNews = await repo.getArticleBySourceId(sourceId: event.sourceId);

          emit(AgencyDetailedData(listArticles: listNews.articles ?? []));
        } catch (e) {
          print('error: $e');
          emit(AgencyDetailedError());
        }
      },
    );
  }

  final HomePageRepo repo;
}
