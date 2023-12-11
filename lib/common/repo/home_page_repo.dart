import 'package:dio/dio.dart';
import 'package:flutter_app_tasc/common/networking/dio/dio_client.dart';
import 'package:flutter_app_tasc/common/networking/dio/dio_exception.dart';
import 'package:flutter_app_tasc/logic/models/hot_news_response.dart';
import 'package:flutter_app_tasc/logic/models/top_headlines_response.dart';

class HomePageRepo {
  final DioClient dioClient;

  HomePageRepo({required this.dioClient});

  Future<TopHeadlinesResponse> getTopHeadLines() async {
    try {
      final response = await dioClient.dio.get('top-headlines?country=us');

      final dataJson = response.data;

      print('DataJson $dataJson');

      return TopHeadlinesResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<HotNewsResponse> getHotNews() async {
    try {
      final response = await dioClient.dio.get('q=sortBy=popularitys');

      final dataJson = response.data;

      print('DataJson $dataJson');

      return HotNewsResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  // Futute getSource ///
}
