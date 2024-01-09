import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/logic/models/articles.dart';

part 'agency_detailed_event.dart';
part 'agency_detailed_state.dart';

class AgencyDetailedBloc
    extends Bloc<AgencyDetailedEvent, AgencyDetailedState> {
  AgencyDetailedBloc(this.repo) : super(AgencyDetailedInitial()) {
    on<AgencyDetailedFetchData>(
      (event, emit) async {
        try {
          emit(AgencyDetailedLoading());

          final listNews =
              await repo.getArticleBySourceId(sourceId: event.sourceId);

          emit(AgencyDetailedData(listArticles: listNews.articles ?? []));
        } catch (e) {
          if (kDebugMode) {
            print('error: $e');
          }
          emit(AgencyDetailedError());
        }
      },
    );
  }

  final Repository repo;
}
