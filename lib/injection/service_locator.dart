import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:gluco_guide/%20data/api_providers/doctor/doctor_auth_api.dart';
import 'package:image_picker/image_picker.dart';
import '../ data/api_providers/patient/patient_auth_api.dart';
import '../ data/dio_helpers/doctor/doctor_dio_client.dart';
import '../ data/dio_helpers/patient/patient_dio_client.dart';
import '../ data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import '../ data/repository/remote_repo/patient/auth/patient_auth_repo_imp.dart';
import '../core/services/image_picker.dart';


final GetIt getIt = GetIt.instance;

Future<void> setupInjections([bool enableFirebase = true]) async {

  getIt.registerSingleton(Dio());

  getIt.registerSingleton(PatientDioClient(getIt<Dio>()));
  getIt.registerSingleton(DoctorDioClient(getIt<Dio>()));

  getIt.registerSingleton(PatientAuthApi(getIt<PatientDioClient>()));
  getIt.registerSingleton(PatientAuthRepoImp(getIt.get<PatientAuthApi>()));

  getIt.registerSingleton(DoctorAuthApi(getIt<DoctorDioClient>()));
  getIt.registerSingleton(DoctorAuthRepoImp(getIt.get<DoctorAuthApi>()));

  // getIt.registerSingleton(ProfileApi(authDioClient: getIt<AuthDioClient>()));
  // getIt.registerSingleton(ProfileRepoImp(getIt.get<ProfileApi>()));


  getIt.registerSingleton(ImagePickerService(ImagePicker()));


}
