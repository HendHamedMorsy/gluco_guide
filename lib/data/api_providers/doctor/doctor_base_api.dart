import '../../dio_helpers/doctor/doctor_dio_client.dart';

abstract class DoctorBaseApi {
  final DoctorDioClient doctorDioClient;

  DoctorBaseApi(this.doctorDioClient);
}
