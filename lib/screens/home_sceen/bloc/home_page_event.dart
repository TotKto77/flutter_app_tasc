part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

final class HomePageFetchTopHeadlines extends HomePageEvent {}
