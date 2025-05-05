import '../../dio_helpers/patient/patient_dio_client.dart';

abstract class PatientBaseApi {
  final PatientDioClient patientDioClient;

  PatientBaseApi(this.patientDioClient);
}
