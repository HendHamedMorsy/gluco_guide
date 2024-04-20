import 'package:dio/dio.dart';
import 'package:gluco_guide/%20data/models/base/base_model.dart';
import 'package:gluco_guide/%20data/models/patient/patient_model/patient_model.dart';
import '../../../../api_providers/patient/patient_auth_api.dart';
import 'patient_auth_repo.dart';

class PatientAuthRepoImp implements PatientAuthRepo {
  final PatientAuthApi _patientAuthApi;

  PatientAuthRepoImp(this._patientAuthApi);

  @override
  Future<PatientModel> registerPatient(
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
      required Set<int>? illnesses}) async {
    Response<dynamic>? response;
    try {
      response = await _patientAuthApi.registerPatientApiRequest(
          name: name,
          email: email,
          password: password,
          mobile: mobile,
          age: age,
          gender: gender,
          hipCircumference: hipCircumference,
          waistCircumference: waistCircumference,
          neckCircumference: neckCircumference,
          diabetesType: diabetesType,
          height: height,
          weight: weight,
          bgl: bgl,
          doctorId: doctorId,
          illnesses: illnesses,
          lifestyleType: lifestyleType,
          workDays: workDays);
      return PatientModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }


  @override
  Future<PatientModel> loginPatient(
      {required String? identifier, required String? password}) async {
    Response<dynamic>? response;
    try {
      response = await _patientAuthApi.loginPatientApiRequest(
          identifier: identifier, password: password);
      return PatientModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }


  @override
  Future<BaseModel> logoutPatient() async{
    Response<dynamic>? response;
    try {
      response = await _patientAuthApi.logoutPatientApiRequest();
      return BaseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }
}
