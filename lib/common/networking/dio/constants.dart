class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://newsapi.org/v2/';
  static const Duration receiveTimeout = Duration(seconds: 10);

  static const Duration connectionTimeout = Duration(seconds: 10);
}

class ApiKey {
  static const String apiKey = '2ebbe57c3405440ead976c5f67f9aa81';
}
