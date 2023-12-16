part of 'source_screen_bloc.dart';

@immutable
sealed class SourceScreenState {}

final class SourceScreenInitial extends SourceScreenState {}

final class SourceScreenLoading extends SourceScreenState {}

final class SourceScreenData extends SourceScreenState {
  final List<Article> articlesList;
  final List<Article>? hotnewsList;
  final List<Source>? sourcesList;

  SourceScreenData({
    required this.articlesList,
    this.hotnewsList,
    this.sourcesList,
  });
}

final class SourceScreenError extends SourceScreenState {}
