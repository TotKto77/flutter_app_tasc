part of 'source_screen_bloc.dart';

@immutable
abstract class SourceScreenEvent {}

class SourceScreenFetchData extends SourceScreenEvent {}

class SourceScreenUpdateFilter extends SourceScreenEvent {
  final String filterText;

  SourceScreenUpdateFilter({required this.filterText});
}

class SourceScreenResetFilter extends SourceScreenEvent {}
