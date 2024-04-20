import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'package:gluco_guide/%20data/models/patient/patient_model/patient_model.dart';
import '../../../../models/base/base_model.dart';

abstract class DoctorAuthRepo {
  Future<DoctorModel> registerDoctor({
    required String? name,
    required String? email,
    required String? password,
    required String? mobile
  });

  Future<DoctorModel> loginDoctor({
    required String? identifier,
    required String? password,
  });

  Future<BaseModel> logoutDoctor();
}
