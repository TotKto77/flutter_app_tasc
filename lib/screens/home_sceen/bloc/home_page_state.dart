part of 'home_page_bloc.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageLoadData extends HomePageState {
  final List<Article> articlesList;
  final List<Article>? hotnewsList;
  final List<Source>? sourcesList;

  HomePageLoadData({
    required this.articlesList,
    this.hotnewsList,
    this.sourcesList,
  });
}

final class HomePageError extends HomePageState {}
