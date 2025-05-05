import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = (dioException.response?.data["data"] as String?) ??
            (dioException.response?.data["errors"] as String?) ??
            _handleError(
              dioException.response?.statusCode,
            );
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        if (dioException.message == "SocketException") {
          message = 'No Internet';
          break;
        } else if (dioException.message == 'HandshakeException') {
          message = 'Response data not found';
          break;
        }
        message =
            "Unexpected error occurred,check your connection and try later.";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return "Not Found";
      case 420:
        return 'Session Expired. Please LogIn again';
      case 500:
        return 'Internal server error';
      case 502:
        return 'Server unavailable';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
