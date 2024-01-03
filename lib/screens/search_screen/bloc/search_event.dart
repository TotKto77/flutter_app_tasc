part of 'search_bloc.dart';

abstract class SearchEvent {}

class SearchInitiated extends SearchEvent {
  final String query;
  SearchInitiated(this.query);
}

class SearchReset extends SearchEvent {}
