part of 'agency_detailed_bloc.dart';

@immutable
sealed class AgencyDetailedEvent {}

final class AgencyDetailedFetchData extends AgencyDetailedEvent {
  final String sourceId;

  AgencyDetailedFetchData({required this.sourceId});
}
