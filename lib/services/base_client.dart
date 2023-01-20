// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:apipublic/services/app_exceptions.dart';
// import 'package:http/http.dart' as http;

// class Baseclient {
//   static int Time_Out_Duration = 20;
//   Future<dynamic> get(String baseUrl, String api) async {
//     final uri = Uri.parse('https://reqres.in/api/users?page=2');
//     try {
//       var response =
//           await http.get(uri).timeout(Duration(seconds: Time_Out_Duration));
//       return _processResponse(response);
//     } on SocketException {
//       throw FetchDataException('No Internet Connection', uri.toString());
//     } on TimeoutException {
//       throw ApiNotRespondException('Api not responded in time', uri.toString());
//     }
//   }
// }

// dynamic _processResponse(http.Response response) {
//   switch (response.statusCode) {
//     case 200:
//       var responseJson = utf8.decode(response.bodyBytes);
//       return responseJson;

//     case 400:
//       throw BadRequestException(
//           utf8.decode(response.bodyBytes), response.request?.url.toString());
//     case 401:
//     case 403:
//       throw UnAuthorizedException(
//           utf8.decode(response.bodyBytes), response.request?.url.toString());
//     case 500:
//       break;
//     default:
//       throw FetchDataException('Error occured with: ${response.statusCode} ',
//           response.request?.url.toString());
//   }
// }
