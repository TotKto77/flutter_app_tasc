import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_tasc/logic/networking/dio/dio_client.dart';
import 'package:flutter_app_tasc/logic/networking/dio/dio_exception.dart';
import 'package:flutter_app_tasc/logic/models/article_response.dart';
import 'package:flutter_app_tasc/logic/models/hot_news_response.dart';

import 'package:flutter_app_tasc/logic/models/source_response.dart';
import 'package:flutter_app_tasc/logic/models/top_headlines_response.dart';

class Repository {
  final DioClient dioClient;

  Repository({required this.dioClient});

  Future<TopHeadlinesResponse> getTopHeadLines() async {
    try {
      final response = await dioClient.dio.get('top-headlines?country=us');

      final dataJson = response.data;

      if (kDebugMode) {
        print('DataJson $dataJson');
      }

      return TopHeadlinesResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<HotNewsResponse> getHotNews() async {
    DateTime now = DateTime.now();
    DateTime threeDaysAgo = now.subtract(const Duration(days: 3));
    String toDate =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    String fromDate =
        "${threeDaysAgo.year}-${threeDaysAgo.month.toString().padLeft(2, '0')}-${threeDaysAgo.day.toString().padLeft(2, '0')}";
    try {
      final response = await dioClient.dio.get(
          'everything?q=from=$fromDate&to=$toDate&sortBy=popularity&pageSize=20');

      final dataJson = response.data;

      if (kDebugMode) {
        print('DataJson $dataJson');
      }

      return HotNewsResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<SourceResponse> getToSource() async {
    try {
      final response = await dioClient.dio.get('top-headlines/sources');

      final dataJson = response.data;

      if (kDebugMode) {
        print('DataJson $dataJson');
      }

      return SourceResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<ArticlesResponse> getArticleBySourceId(
      {required String sourceId}) async {
    try {
      final response =
          await dioClient.dio.get('top-headlines?sources=$sourceId');

      final dataJson = response.data;

      if (kDebugMode) {
        print('DataJson $dataJson');
      }

      return ArticlesResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<HotNewsResponse> getArticleSearch(String query) async {
    DateTime now = DateTime.now();
    DateTime threeDaysAgo = now.subtract(const Duration(days: 3));
    String toDate =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    String fromDate =
        "${threeDaysAgo.year}-${threeDaysAgo.month.toString().padLeft(2, '0')}-${threeDaysAgo.day.toString().padLeft(2, '0')}";

    try {
      final response = await dioClient.dio.get(
          'everything?q=$query&from=$fromDate&to=$toDate&sortBy=popularity&pageSize=20');

      final dataJson = response.data;

      if (kDebugMode) {
        print('DataJson $dataJson');
      }

      return HotNewsResponse.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  searchArticles(String query) {}
}
