import 'package:dio/dio.dart';
import 'package:gluco_guide/%20data/api_providers/doctor/doctor_auth_api.dart';
import 'package:gluco_guide/%20data/models/base/base_model.dart';
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'doctor_auth_repo.dart';

class DoctorAuthRepoImp implements DoctorAuthRepo {
  final DoctorAuthApi _doctorAuthApi;

  DoctorAuthRepoImp(this._doctorAuthApi);

  @override
  Future<DoctorModel> registerDoctor(
      {required String? name,
        required String? email,
        required String? password,
        required String? mobile}) async{
    Response<dynamic>? response;
    try {
      response = await _doctorAuthApi.registerDoctorApiRequest(
          name: name,email: email,mobile: mobile, password: password);
      return DoctorModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }


  @override
  Future<DoctorModel> loginDoctor(
      {required String? identifier, required String? password}) async {

    Response<dynamic>? response;
    try {
      response = await _doctorAuthApi.loginDoctorApiRequest(
          identifier: identifier, password: password);
      return DoctorModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<BaseModel> logoutDoctor() async{
    Response<dynamic>? response;
    try {
      response = await _doctorAuthApi.logoutDoctorApiRequest();
      return BaseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      rethrow;
    }
  }


}
