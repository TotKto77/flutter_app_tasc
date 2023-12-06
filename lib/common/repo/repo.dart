import 'package:flutter_app_tasc/logic/models/dio_model_head.dart';

abstract class NewsRepository {
  Future<EverythingResponse> getNews(String query);
}
