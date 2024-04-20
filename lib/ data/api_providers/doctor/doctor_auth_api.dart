import 'package:dio/dio.dart';
import 'package:gluco_guide/%20data/api_providers/doctor/doctor_base_api.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/constants/app_constants.dart';

final class DoctorAuthApi extends DoctorBaseApi {
  DoctorAuthApi(super.dioClient);


  Future<Response<dynamic>> registerDoctorApiRequest(
      {required String? name,
        required String? email,
        required String? password,
        required String? mobile
      }) async {
    try {
      final Response<dynamic> response =
      await doctorDioClient.post(ApiConstants.doctorRegister, data:
          <String, dynamic>{
            AppConstants.NAME: name,
            AppConstants.EMAIL: email,
            AppConstants.MOBILE: mobile,
            AppConstants.PASSWORD: password
          }
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> loginDoctorApiRequest({
    String? identifier,
    String? password
  }) async {
    try {
      final Response<dynamic> response =
      await doctorDioClient.post(ApiConstants.doctorLogin, data: <String, String?>{
        AppConstants.IDENTIFIER: identifier,
        AppConstants.PASSWORD: password
      });
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> logoutDoctorApiRequest() async {
    try {
      final Response<dynamic> response =
      await doctorDioClient.get(ApiConstants.doctorLogout);
      return response;
    } on DioException {
      rethrow;
    }
  }

}
