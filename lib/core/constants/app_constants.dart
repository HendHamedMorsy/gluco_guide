// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();
  static final AppConstants shared = AppConstants._();
  static const String ENV_DEV_PATH = "assets/env/env_prod.env";
  static const String ENV_DEV_BASE = "assets/env/env_base.env";
  final EdgeInsets defaultScaffoldPadding =
      const EdgeInsets.only(left: 30, right: 30, top: 18);
  final Duration videoDuration =
      Platform.isIOS ? const Duration(seconds: 7) : Duration.zero;
  final double designHeight = 852;
  final double designWidth = 393;

  final String defaultAppLocale = "en";
  final String arabicAppLocale = "ar";
  final String translationPath = "assets/translations";
  final Duration splashDelayTime = const Duration(seconds: 2);
  final Duration showHideListAnimationDuration =
      const Duration(milliseconds: 500);
  final Duration snackbarDuration = const Duration(seconds: 1);
  final Duration remoteConfigFetchTimeout = const Duration(minutes: 1);
  final Duration remoteConfigMinimumFetchInterval = const Duration(minutes: 5);
  final String remoteConfigGuestMode = "enable_guest_mode";
  final String remoteConfigPhoneSupport = "phone_support";
  final String remoteConfigWhatsappSupport = "whatsapp_support";
  final double minFilterPrice = 0.0;
  final double maxFilterPrice = 100000;

  final double minPropertySquareSize = 0.0;
  final double maxPropertySquareSize = 10000;
  final double twoPMInHours = 14;
  final List<int> pagesThatRequireAuth = <int>[2, 3];

  static const String NAME = "name";
  static const String EMAIL = "email";
  static const String MOBILE = "mobile";
  static const String PASSWORD = "password";
  static const String PASSWORD_CONFIRMATION = "password_confirmation";
  static const String IMAGE = "image";
  static const String ID = "id";
  static const String CURRENT_PASSWORD = "current_password";
  static const String NEW_PASSWORD = "new_password";
  static const String CODE = "code";
  static const String OLD_PASSWORD = "old_password";
  static const String PUSH_TOKEN = "push_token";
  static const String DOCTOR_ID = "doctor_id";
  static const String WEIGHT = "weight";
  static const String HEIGHT = "height";
  static const String AGE = "age";
  static const String GENDER = "gender";
  static const String BGL = "BGL";
  static const String WAIST_CIRCUMFERENCE = "waist_circumference";
  static const String NECK_CIRCUMFERENCE = "neck_circumference";
  static const String HIP_CIRCUMFERENCE = "hip_circumference";
  static const String LIFESTYLE_TYPE = "lifestyle_type";
  static const String DIABETES_TYPE = "diabetes_type";
  static const String WORKOUT_DAYS = "workout_days";
  static const String ILLNESSES = "illnesses";
  static const String IDENTIFIER = "identifier";



}
