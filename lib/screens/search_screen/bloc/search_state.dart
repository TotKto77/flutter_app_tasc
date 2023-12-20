part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<Article> searchArticlesList;
  SearchLoaded({required this.searchArticlesList});
}

class SearchError extends SearchState {
  final String message;
  SearchError(this.message);
}
