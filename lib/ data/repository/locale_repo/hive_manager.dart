import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/constants/db_constants.dart';
import '../../../core/services/log_manager.dart';
import '../../models/patient/patient_model/patient_model.dart';

class HiveManager {
  HiveManager._();
  static final HiveManager _shared = HiveManager._();
  factory HiveManager.instance() => _shared;

  late Box<Patient> patientBox;
  late Box<PatientToken> patientTokenBox;
  late Box<Doctor> doctorBox;
  late Box<DoctorToken> doctorTokenBox;
  FlutterSecureStorage? secureStorage;
  late Box<String> encryptedAccessBox;

  Future<void> initHiveDB() async {
    await Hive.initFlutter();
  }

  Future<void> registerUserAdapter() async {
    Hive.registerAdapter(PatientAdapter());
    Hive.registerAdapter(DoctorAdapter());
    Hive.registerAdapter(PatientTokenAdapter());
    Hive.registerAdapter(DoctorTokenAdapter());
  }



  Future<void> openRequiredBoxes() async {
    try {
      await Future.wait(<Future<void>>[
        openPatientBox(),
        openPatientTokenBox(),
        openDoctorBox(),
        openDoctorTokenBox(),
      ]);
    } on Exception catch (e) {
      LogManager.logToConsole(e, "openRequiredBoxes error");
    }
  }

  Future<void> openPatientBox() async {
    try {
      patientBox = await Hive.openBox<Patient>(DbConstants.PATIENT_BOX_KEY);
    } on Exception catch (e) {
      LogManager.logToConsole(e, "openUserBox error");
    }
  }

  Future<void> openPatientTokenBox() async {
    try {
      patientTokenBox = await Hive.openBox<PatientToken>(DbConstants.PATIENT_TOKEN_BOX_KEY);
    } on Exception catch (e) {
      LogManager.logToConsole(e, "openTokenBox error");
    }
  }

  Future<void> openDoctorBox() async {
    try {
      doctorBox = await Hive.openBox<Doctor>(DbConstants.DOCTOR_BOX_KEY);
    } on Exception catch (e) {
      LogManager.logToConsole(e, "openTokenBox error");
    }
  }

  Future<void> openDoctorTokenBox() async {
    try {
      doctorTokenBox = await Hive.openBox<DoctorToken>(DbConstants.DOCTOR_TOKEN_BOX_KEY);
    } on Exception catch (e) {
      LogManager.logToConsole(e, "openTokenBox error");
    }
  }


  Future<void> createOrUpdatePatientBoxValue(Patient? patientData) async {
    if (patientData == null) return;
    patientBox.put(DbConstants.PATIENT_BOX_KEY, patientData);
  }
  Future<void> createOrUpdatePatientTokenBoxValue(DoctorToken? doctorToken) async {
    if (doctorToken == null) return;
    doctorTokenBox.put(DbConstants.DOCTOR_TOKEN_BOX_KEY, doctorToken);
  }
  Future<void> createOrUpdateDoctorBoxValue(Doctor? doctorData) async {
    if (doctorData == null) return;
    doctorBox.put(DbConstants.DOCTOR_BOX_KEY, doctorData);
  }
  Future<void> createOrUpdateDoctorTokenBoxValue(PatientToken? patientToken) async {
    if (patientToken == null) return;
    patientTokenBox.put(DbConstants.PATIENT_TOKEN_BOX_KEY, patientToken);
  }


  bool isPatientBoxInitialized() {
    return patientBox.containsKey(DbConstants.PATIENT_BOX_KEY);
  }
  bool isPatientTokenBoxInitialized() {
    return patientTokenBox.containsKey(DbConstants.PATIENT_TOKEN_BOX_KEY);
  }
  bool isUserBoxInitialized() {
    return doctorBox.containsKey(DbConstants.DOCTOR_TOKEN_BOX_KEY);
  }
  bool isTokenBoxInitialized() {
    return doctorTokenBox.containsKey(DbConstants.DOCTOR_TOKEN_BOX_KEY);
  }



  Future<void> deletePatientFromLocalStorage() async {
    try {
      await patientBox.delete(DbConstants.PATIENT_BOX_KEY);
      await patientTokenBox.delete(DbConstants.PATIENT_TOKEN_BOX_KEY);
      await patientBox.clear();
      await patientTokenBox.clear();
    } on Exception catch (e) {
      LogManager.logToConsole(e, "error deleteUserFromLocalStorage()");
    }
  }

  Future<void> deleteDoctorFromLocalStorage() async {
    try {
      await doctorBox.delete(DbConstants.DOCTOR_BOX_KEY);
      await doctorTokenBox.delete(DbConstants.DOCTOR_TOKEN_BOX_KEY);
      await doctorBox.clear();
      await doctorTokenBox.clear();
    } on Exception catch (e) {
      LogManager.logToConsole(e, "error deleteUserFromLocalStorage()");
    }
  }



  Future<Patient?> getLocalPatientFromStorage() async {
    return patientBox.get(DbConstants.PATIENT_BOX_KEY);
  }

  Future<PatientToken?> getPatientTokenFromStorage() async {
    return patientTokenBox.get(DbConstants.PATIENT_TOKEN_BOX_KEY);
  }
  Future<String?> getLocalUnSecuredPatientTokenFromStorage() async {
    return patientTokenBox.get(DbConstants.PATIENT_TOKEN_BOX_KEY)?.accessToken;
  }

  Future<Doctor?> getLocalDoctorFromStorage() async {
    return doctorBox.get(DbConstants.DOCTOR_BOX_KEY);
  }

  Future<DoctorToken?> getTokenFromStorage() async {
    return doctorTokenBox.get(DbConstants.DOCTOR_TOKEN_BOX_KEY);
  }
  Future<String?> getLocalUnSecuredDoctorTokenFromStorage() async {
    return doctorTokenBox.get(DbConstants.DOCTOR_TOKEN_BOX_KEY)?.accessToken;
  }
}
