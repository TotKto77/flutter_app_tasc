import 'package:flutter_app_tasc/logic/models/source.dart';

class SourceResponse {
  final List<Source> sources;

  SourceResponse(
    this.sources,
  );

  SourceResponse.fromJson(Map<String, dynamic> json)
      : sources = (json["sources"] as List).map((i) => Source.fromJson(i)).toList();
}
