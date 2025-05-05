import 'package:gluco_guide/data/models/doctor/doctor_model/doctor_model.dart';

import '../../../../models/base/base_model.dart';
import '../../../../models/doctor/patients_list_model/patient_list_model.dart';

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
  Future<PatientListModel>getAllPatients();
}
