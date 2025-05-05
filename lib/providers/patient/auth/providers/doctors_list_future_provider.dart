import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/data/models/patient/doctor_list_model/doctor_list_model.dart';
import 'package:gluco_guide/data/models/patient/illnesses_list_model/illnesses_list_model.dart';
import 'package:gluco_guide/data/models/patient/sensor_model/sensor_model.dart';
import 'package:gluco_guide/data/repository/remote_repo/patient/auth/patient_auth_repo_imp.dart';
import 'package:gluco_guide/injection/service_locator.dart';

final AutoDisposeFutureProvider<List<DoctorListData>> allDoctorsFutureProvider =
FutureProvider.autoDispose<List<DoctorListData>>(
        (AutoDisposeFutureProviderRef<List<DoctorListData>> ref) async {
          DoctorListModel? response = await getIt.get<PatientAuthRepoImp>().getDoctorsList();
      return response.doctorsList ?? <DoctorListData>[];
    });


final AutoDisposeFutureProvider<List<IllnessesListData>> allIllnessesFutureProvider =
FutureProvider.autoDispose<List<IllnessesListData>>(
        (AutoDisposeFutureProviderRef<List<IllnessesListData>> ref) async {
          IllnessesListModel? response = await getIt.get<PatientAuthRepoImp>().getAllIllnesses();
      return response.illnessesList ?? <IllnessesListData>[];
    });
final AutoDisposeFutureProvider<SensorModel> getSensorsDataFutureProvider =
FutureProvider.autoDispose<SensorModel>(
        (AutoDisposeFutureProviderRef<SensorModel> ref) async {
          SensorModel? response = await getIt.get<PatientAuthRepoImp>().getSensorsData();
      return response;
    });