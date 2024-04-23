import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/%20data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import '../../../../ data/models/patient/patient_model/patient_model.dart';
import '../../../../injection/service_locator.dart';

final AutoDisposeFutureProvider<List<Patient>> allPatientsFutureProvider =
FutureProvider.autoDispose<List<Patient>>(
        (AutoDisposeFutureProviderRef<List<Patient>> ref) async {
          var response = await getIt.get<DoctorAuthRepoImp>().getAllPatients();
      return response.patientsList ?? <Patient>[];
    });
