class AppFailure implements Exception {
  final String title;
  final String? description;

  AppFailure({
    required this.title,
    this.description = " ",
  });

  factory AppFailure.fromFailure(Failure failure) {
    return AppFailure(
      title: failure.title,
      description: failure.description,
    );
  }
}

enum Failure {
  notFound,
  unauthorized,
  forbidden,
  badRequest,
  tooManyRequests,
  internalServerError,
  badGateway,
  serviceUnavailable,
}

extension FailureProperties on Failure {
  static final _title = {
    Failure.notFound: 'Not Found',
    Failure.unauthorized: 'Unauthorized',
    Failure.forbidden: 'Forbidden',
    Failure.badRequest: 'Bad Request',
    Failure.tooManyRequests: 'Too Many Requests',
    Failure.internalServerError: 'Internal Server Error',
    Failure.badGateway: 'Bad Gateway',
    Failure.serviceUnavailable: 'Service Unavailable',
  };
  static final _description = {
    Failure.notFound: 'Not Found description',
    Failure.unauthorized: 'Unauthorized description',
    Failure.forbidden: 'Forbidden description',
    Failure.badRequest: 'Bad Request description',
    Failure.tooManyRequests: 'Too Many Requests description',
    Failure.internalServerError: 'Internal Server Error description',
    Failure.badGateway: 'Bad Gateway description',
    Failure.serviceUnavailable: 'Service Unavailable description',
  };

  String get title => _title[this]!;

  String get description => _description[this]!;

  AppFailure get toAppFailure =>
      AppFailure(title: title, description: description);
}
