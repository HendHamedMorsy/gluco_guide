import 'package:dio/dio.dart';
import 'package:gluco_guide/%20data/api_providers/patient/patient_base_api.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/constants/app_constants.dart';

final class PatientAuthApi extends PatientBaseApi {
  PatientAuthApi(super.dioClient);


  Future<Response<dynamic>> registerPatientApiRequest(
      {required String? name,
        required String? email,
        required String? password,
        required String? mobile,
      required int? doctorId,
      required String? weight,
      required String? height,
        required String? age,
        required String? gender,
        required String? bgl,
        required String? waistCircumference,
        required String? neckCircumference,
        required String? hipCircumference,
        required String? lifestyleType,
        required String? diabetesType,
        required String? workDays,
        required Set<int>? illnesses,
      }) async {
    try {
      final Response<dynamic> response =
      await patientDioClient.post(ApiConstants.patientRegister, data:
          <String, dynamic>{
            AppConstants.NAME: name,
            AppConstants.EMAIL: email,
            AppConstants.MOBILE: mobile,
            AppConstants.PASSWORD: password,
            AppConstants.DOCTOR_ID : doctorId,
            AppConstants.WEIGHT : weight,
            AppConstants.HEIGHT : height,
            AppConstants.AGE : age,
            AppConstants.GENDER : gender,
            AppConstants.BGL : bgl,
            AppConstants.WAIST_CIRCUMFERENCE :waistCircumference,
            AppConstants.NECK_CIRCUMFERENCE :neckCircumference,
            AppConstants.HIP_CIRCUMFERENCE : hipCircumference,
            AppConstants.LIFESTYLE_TYPE : lifestyleType,
            AppConstants.DIABETES_TYPE :diabetesType,
            AppConstants.WORKOUT_DAYS : workDays,
            AppConstants.ILLNESSES : illnesses?.toList()

          }
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> loginPatientApiRequest({
    String? identifier,
    String? password
  }) async {
    try {
      final Response<dynamic> response =
      await patientDioClient.post(ApiConstants.patientLogin, data: <String, String?>{
        AppConstants.IDENTIFIER: identifier,
        AppConstants.PASSWORD: password
      });
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> logoutPatientApiRequest() async {
    try {
      final Response<dynamic> response =
      await patientDioClient.get(ApiConstants.patientLogout);
      return response;
    } on DioException {
      rethrow;
    }
  }

}
