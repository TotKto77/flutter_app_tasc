import 'package:dio/dio.dart';

class DioException implements Exception {
  late String errorMessage;

  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = "Request to the server was cancelled.";

      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timed out.";

      case DioExceptionType.receiveTimeout:
        errorMessage = "Receiving timeout occurred.";

      case DioExceptionType.sendTimeout:
        errorMessage = "Request send timeout.";

      case DioExceptionType.badResponse:
        errorMessage = _handleStatusCode(dioError.response?.statusCode);

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          errorMessage = 'No Internet.';
        }
        errorMessage = 'Unexpected error occurred.';

      default:
        errorMessage = 'Something went wrong';
    }
  }
  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Some random text for example';
      case 401:
        return 'Oops something went wrong!';
      case 403:
        return 'Oops something went wrong!';
      case 404:
        return 'Oops something went wrong!';
      case 500:
        return 'Oops something went wrong!';
      default:
        return 'Oops something went wrong!';
    }
  }

  @override
  String toString() => errorMessage;
}
