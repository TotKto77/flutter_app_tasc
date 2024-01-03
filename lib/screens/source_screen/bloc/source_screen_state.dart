part of 'source_screen_bloc.dart';

@immutable
sealed class SourceScreenState {}

final class SourceScreenInitial extends SourceScreenState {}

final class SourceScreenLoading extends SourceScreenState {}

final class SourceScreenData extends SourceScreenState {
  final List<Article> articlesList;
  final List<Article>? hotnewsList;
  final List<Source> sourcesList;
  final String filterText;
  final bool isFilterApplied;

  SourceScreenData({
    required this.filterText,
    required this.articlesList,
    this.hotnewsList,
    required this.sourcesList,
    this.isFilterApplied = false,
  });

  SourceScreenData copyWith({
    String? filterText,
    List<Source>? sourcesList,
    bool? isFilterApplied,
  }) {
    return SourceScreenData(
      filterText: filterText ?? this.filterText,
      articlesList: articlesList,
      hotnewsList: hotnewsList,
      sourcesList: sourcesList ?? this.sourcesList,
      isFilterApplied: isFilterApplied ?? this.isFilterApplied,
    );
  }
}

final class SourceScreenError extends SourceScreenState {}
