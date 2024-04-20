import 'package:dio/dio.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../core/constants/api_constants.dart';
import '../../repository/locale_repo/hive_manager.dart';

class PatientDioClient {
  final Dio _dio;

  PatientDioClient(this._dio, {String? customBaseUrl}) {
    _dio
      ..options.baseUrl = customBaseUrl ?? ApiConstants.url
      ..options.connectTimeout = ApiConstants.connectionTimeout
      ..options.receiveTimeout = ApiConstants.receiveTimeout
      ..options.responseType = ResponseType.json
      ..options.contentType = ApiConstants.contentType
      ..options.headers = <String, String?>{
        "Accept": "application/json"
      }
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }
  // Get:-----------------------------------------------------------------------
  Future<Response<dynamic>> get(
      String path, {
        Map<String, dynamic>? queryParameters,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      final Response<dynamic> response = await _dio.get(
        "/$path",
        queryParameters: queryParameters,
        options: Options(headers: <String, String?>{
          "Accept": "application/json",
          "Authorization": (await HiveManager.instance()
              .getLocalUnSecuredPatientTokenFromStorage() ??
              "")
              .toBearerToken()
        }),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response<dynamic>> post(
      String path, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      final Response<dynamic> response = await _dio.post(
        "/$path",
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }


}
