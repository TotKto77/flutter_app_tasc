import 'package:dio/dio.dart';
import 'package:flutter_app_tasc/logic/networking/dio/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  final options = BaseOptions(
    baseUrl: Endpoints.baseUrl,
    connectTimeout: Endpoints.connectionTimeout,
    receiveTimeout: Endpoints.receiveTimeout,
    queryParameters: {'apiKey': ApiKey.apiKey},
  );

  late final dio = Dio(options)
    ..interceptors.addAll(
      [
        _BasicInterceptor(),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          compact: false,
        ),
      ],
    );
}

class _BasicInterceptor implements Interceptor {
  @override
  void onError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
