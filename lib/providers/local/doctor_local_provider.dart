import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../ data/models/doctor/doctor_model/doctor_model.dart';
import '../../ data/repository/locale_repo/hive_manager.dart';
import '../../core/constants/db_constants.dart';


final Provider<Doctor?> doctorLocalProvider =
    Provider<Doctor?>((ProviderRef<Doctor?> ref) {
  return HiveManager.instance().doctorBox.get(DbConstants.DOCTOR_BOX_KEY);
});
final Provider<DoctorToken?> doctorTokenProvider =
Provider<DoctorToken?>((ProviderRef<DoctorToken?> ref) {
  return HiveManager.instance().doctorTokenBox.get(DbConstants.DOCTOR_TOKEN_BOX_KEY);
});