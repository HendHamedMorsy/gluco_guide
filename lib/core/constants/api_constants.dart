import '../services/env.dart';

abstract class ApiConstants {
  static String url = Env.baseUrl ?? "URL  Not Found";
  static String erpUrl = Env.erpUrl ?? "ERP URL Not Found";
  // static String crispWebSiteId =
  //     Env.crispWebsiteId ?? "crispWebSiteId  Not Found";

  static String googleMapKey = Env.googleMapKey ?? "Google Map Key  Not Found";
  static const Duration receiveTimeout = Duration(milliseconds: 60000);
  static const Duration connectionTimeout = Duration(milliseconds: 60000);
  static const String contentType = "application/json";
  ///Doctor
  static const String doctorRegister = "doctor/register";
  static const String doctorLogin = "doctor/login";
  static const String doctorProfile = "doctor/profile";
  static const String doctorLogout = "doctor/logout";
  static const String doctorUpdateProfile = "doctor/updateProfile";
  static const String deleteDoctorAccount = "doctor/delete";
  ///Patient
   static const String patientRegister = "doctor/register";
     static const String patientLogin = "doctor/login";
    static const String patientProfile = "doctor/profile";
     static const String patientLogout = "doctor/logout";
     static const String patientUpdateProfile = "doctor/updateProfile";
    static const String deletePatientAccount = "doctor/delete";
  static const String patientResetPassword = "doctor/resetPassword";

}
