import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';
import 'package:gluco_guide/firebase_options.dart';
import 'core/services/env.dart';
import 'gluco_guide_app.dart';
import 'injection/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Env.init();
  await HiveManager.instance().initHiveDB();
  await HiveManager.instance().registerUserAdapter();
  await HiveManager.instance().openRequiredBoxes();
  setupInjections();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  runApp(const ProviderScope(child: GlucoGuideApp()));
}
