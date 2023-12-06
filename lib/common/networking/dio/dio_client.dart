import 'package:dio/dio.dart';

import '../../constants/constants.dart';

class DioClient {
  DioClient._();

  static final instance = DioClient._();

  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(seconds: 60),
        receiveTimeout: Duration(seconds: 60),
        queryParameters: {
          "apiKey": apiKey,
        }),
  );
}
