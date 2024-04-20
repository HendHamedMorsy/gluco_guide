import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/services/env.dart';
import 'gluco_guide_app.dart';
import 'injection/service_locator.dart';

void main() async{
  await Env.init();
  setupInjections();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  runApp(const ProviderScope(child: GlucoGuideApp()));
}


