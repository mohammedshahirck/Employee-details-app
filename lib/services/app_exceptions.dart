// class AppException implements Exception {
//   final String? message;
//   final String? prefix;
//   final String? url;

//   AppException([this.message, this.prefix, this.url]);
// }

// class BadRequestException extends AppException {
//   BadRequestException([String? message, String? url])
//       : super(message, 'Bad request', url);
// }

// class FetchDataException extends AppException {
//   FetchDataException([String? message, String? url])
//       : super(message, 'Unable to Process', url);
// }

// class ApiNotRespondException extends AppException {
//   ApiNotRespondException([String? message, String? url])
//       : super(message, 'Api not  responded', url);
// }

// class UnAuthorizedException extends AppException {
//   UnAuthorizedException([String? message, String? url])
//       : super(message, 'UnAutherized Exceptions', url);
// }
