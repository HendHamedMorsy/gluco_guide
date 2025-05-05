import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/data/models/patient/patient_model/patient_model.dart';
import 'package:gluco_guide/data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import 'package:gluco_guide/injection/service_locator.dart';

final AutoDisposeFutureProvider<List<Patient>> allPatientsFutureProvider =
FutureProvider.autoDispose<List<Patient>>(
        (AutoDisposeFutureProviderRef<List<Patient>> ref) async {
          var response = await getIt.get<DoctorAuthRepoImp>().getAllPatients();
      return response.patientsList ?? <Patient>[];
    });
