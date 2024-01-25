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
  static const String NEW_PASSWORD_CONFIRMATION = "new_password_confirmation";
  static const String AREA = "area";
  static const String LATITUDE = "latitude";
  static const String LONGITUDE = "longitude";
  static const String PUSH_TOKEN = "push_token";
  static const String CARD_ID = "card_id";
  static const String AMOUNT = "amount";

  /// ERP Endpoints
  /// Create New Address API
  static const String CUSTOM_TYPE = "custom_type";
  static const String CUSTOM_BUILDING_NO = "custom_building_no";
  static const String CUSTOM_FLAT_NO = "custom_flat_no";
  static const String ADDRESS_LINE_1 = "address_line1";
  static const String CITY = "city";
  static const String COUNTRY = "country";
  static const String STATE = "state";
  static const String EMIRATE = "emirate";
  static const String PIN_CODE = "pincode";
  static const String PHONE = "phone";
  static const String ADDRESS_TITLE = "address_title";
  static const String CUSTOM_CUSTOMER_NAME = "custom_customer_name";
  static const String LINKS = "links";
  static const String CUSTOM_VILLA_NO = "custom_villa_no";
  static const String CUSTOM_OFFICE_NO = "custom_office_no";
  static const String CUSTOM_ROOM_NO = "custom_room_no";
  static const String CUSTOM_HOTEL_NAME = "custom_hotel_name";
  static const String DISABLED = "disabled";

  /// all addresses
  static const String FIELDS = "fields";
  static const String FILTERS = "filters";

// notifications
  static const String HIGH_IMPORTANCE_CHANNEL = "high_importance_channel";
  static const String HIGH_IMPORTANCE_TITLE =
      "High Importance Properties Notifications";
  static const String HIGH_IMPORTANCE_DESC =
      "Used for getting details about booked properties";

  //pickup
  static const String STREET_NAME = "street_name";
  static const String SERVICE_ID = "service_id";
  static const String OPTION_ID = "option_id";
  static const String PICKUP_DATE = "pickup_date";
  static const String DELIVERY_DATE = "delivery_date";
  static const String ORDER_NAME = "name";
  static const String PAYMENT_METHOD = "payment_method";

  //order
  static const String CUSTOMER = "customer";
  static const String ITEMS = "items";
  static const String CUSTOMER_ADDRESS = "customer_address";
  static const String SHIPPING_RULE = "shipping_rule";
  static const String CUSTOM_PICKUP_DATETIME = "custom_pickup_datetime";
  static const String SELLING_PRICE_LIST = "selling_price_list";
  static const String CUSTOM_REDEEM_WASHWARDS = "custom_redeem_washwards";
}
