import 'package:gluco_guide/%20data/models/patient/patient_model/patient_model.dart';
import '../../../../models/base/base_model.dart';
import '../../../../models/patient/doctor_list_model/doctor_list_model.dart';
import '../../../../models/patient/illnesses_list_model/illnesses_list_model.dart';
import '../../../../models/patient/sensor_model/sensor_model.dart';

abstract class PatientAuthRepo {
  Future<PatientModel> registerPatient({
    required String? name,
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
    required int? workDays,
    required Set<int>? illnesses,
  });

  Future<PatientModel> loginPatient({
    required String? identifier,
    required String? password,
  });

  Future<BaseModel> logoutPatient();
  Future<DoctorListModel> getDoctorsList();
  Future<IllnessesListModel> getAllIllnesses();
  Future<SensorModel> getSensorsData();
}
