// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import '../../../core/constants/db_constants.dart';
// import '../../../core/services/log_manager.dart';
//
//
// class HiveManager {
//   HiveManager._();
//   static final HiveManager _shared = HiveManager._();
//   factory HiveManager.instance() => _shared;
//
//   // late Box<UserData> userBox;
//   late Box<String?> pushTokenBox;
//   late Box<bool> privacyPolicyBox;
//   // late Box<ReceivedNotification?> receivedNotificationList;
//
//   FlutterSecureStorage? secureStorage;
//   late Box<String> encryptedAccessBox;
//
//   Future<void> initHiveDB() async {
//     // secureStorage = getIt.get<FlutterSecureStorage>();
//     await Hive.initFlutter();
//   }
//
//   // Future<void> registerUserAdapter() async {
//   //   // Hive.registerAdapter(ShortysThemeAdapter());
//   //   Hive.registerAdapter(UserDataAdapter());
//   // }
//
// registerAdapter  // Future<void> registerCachedNotificationAdapter() async {
//   //   // Hive.registerAdapter(ShortysThemeAdapter());
//   //   Hive.registerAdapter(ReceivedNotificationAdapter());
//   // }
//
//   Future<void> openRequiredBoxes() async {
//     try {
//       await Future.wait(<Future<void>>[
//         openUserBox(),
//         openPushNotificationBox(),
//         // openEncryptedBox(),
//         openPrivacyPolicyBox(),
//         openLocalNotificationListBox()
//       ]);
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "openRequiredBoxes error");
//     }
//   }
//
//   Future<void> openUserBox() async {
//     LogManager.logToConsole("openning..", "user_box");
//     try {
//       userBox = await Hive.openBox<UserData>(DbConstants.USER_BOX_KEY);
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "openUserBox error");
//     }
//   }
//
//   // Future<void> openPushNotificationBox() async {
//     LogManager.logToConsole("openning.. Notification box", "psuh_box");
//     try {
//       pushTokenBox =
//           await Hive.openBox<String?>(DbConstants.PUSH_TOKEN_BOX_KEY);
//       LogManager.logToConsole(
//           "old saved ${pushTokenBox.get(DbConstants.PUSH_TOKEN_BOX_KEY)}.. Notification box",
//           "push_box");
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "openPushNotificationBox error");
//     }
//   }
//
//   Future<void> openLocalNotificationListBox() async {
//     LogManager.logToConsole(
//         "openning.. LocalNotificationListBox ", "local_notification_list_box");
//     try {
//       receivedNotificationList = await Hive.openBox<ReceivedNotification>(
//           DbConstants.LOCAL_NOTIFICATION_LIST_BOX_KEY);
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "openLocalNotificationListBox error");
//     }
//   }
//
//   Future<void> addNotificationToBox(ReceivedNotification notification) async {
//     try {
//       receivedNotificationList.add(notification);
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "addNotificationToBox error");
//     }
//   }
//
//   Future<void> clearNotificationToBox() async {
//     try {
//       receivedNotificationList.clear();
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "clearNotificationToBox error");
//     }
//   }
//
//   Future<void> openPrivacyPolicyBox() async {
//     LogManager.logToConsole("openning..", "privacy_policy_box");
//     try {
//       privacyPolicyBox =
//           await Hive.openBox<bool>(DbConstants.HAS_ACCEPT_POLICY);
//     } on Exception catch (e) {
//       LogManager.logToConsole(e);
//     }
//   }
//
//   Future<void> createOrUpdateUserBoxValue(UserData? data) async {
//     if (data == null) return;
//     userBox.put(DbConstants.USER_DATA_KEY, data);
//   }
//
//   Future<void> createOrUpdatePushTokenBoxValue(String? pushToken) async {
//     if (pushToken == null) return;
//     pushTokenBox.put(DbConstants.PUSH_TOKEN_BOX_KEY, pushToken);
//   }
//
//   Future<void> createOrUpdatePrivacyPolicyBoxValue(bool? hasAccepted) async {
//     if (hasAccepted == null) return;
//     privacyPolicyBox.put(DbConstants.HAS_ACCEPT_POLICY, hasAccepted);
//   }
//
//   bool isUserBoxInitialized() {
//     return userBox.containsKey(DbConstants.USER_DATA_KEY);
//   }
//
//   Future<void> deleteUserFromLocalStorage() async {
//     try {
//       await userBox.delete(DbConstants.USER_DATA_KEY);
//       await userBox.delete(DbConstants.PUSH_TOKEN_BOX_KEY);
//       // await encryptedAccessBox.delete(DbConstants.ENCRYPTED_BOX);
//       await userBox.clear();
//       await privacyPolicyBox.clear();
//       await pushTokenBox.clear();
//       // await encryptedAccessBox.clear();
//       // await secureStorage?.deleteAll();
//       // encryptedAccessBox.close();
//       // userBox.deleteFromDisk();
//       // encryptedAccessBox.deleteFromDisk();
// // Delete all
//     } on Exception catch (e) {
//       LogManager.logToConsole(e, "error deleteUserFromLocalStorage()");
//     }
//   }
//
//   Future<void> prepareEncryptionKeys() async {
//     bool containsEncryptionKey = await secureStorage?.containsKey(
//             key: DbConstants.ACCESS_TOKEN_ENCRYPTION_KEY) ??
//         false;
//     if (!containsEncryptionKey) {
//       LogManager.logToConsole("creating for fist time..", "encryptionKey");
//       List<int> key = Hive.generateSecureKey();
//       await secureStorage?.write(
//           key: DbConstants.ACCESS_TOKEN_ENCRYPTION_KEY,
//           value: base64UrlEncode(key));
//     } else {
//       LogManager.logToConsole("already created..", "encryptionKey");
//     }
//   }
//
//   Future<void> openEncryptedBox() async {
//     await prepareEncryptionKeys();
//
//     final String? key =
//         await secureStorage?.read(key: DbConstants.ACCESS_TOKEN_ENCRYPTION_KEY);
//     await Future<void>.delayed(const Duration(milliseconds: 300));
//     if (key == null) {
//       LogManager.logToConsole("encrypted key is null!!!");
//       return;
//     }
//     final Uint8List encryptionKey = base64Url.decode(key);
//     // LogManager.logToConsole(key);
//     encryptedAccessBox = await Hive.openBox(
//       DbConstants.ENCRYPTED_BOX,
//       encryptionCipher: HiveAesCipher(encryptionKey),
//     );
//   }
//
//   ///[TODO: fix issue with it later on]
//   // Future<String?> getSecuredAccessToken() async {
//   //   try {
//   //     if (Hive.isBoxOpen(DbConstants.ENCRYPTED_BOX) == false) {
//   //       await openEncryptedBox();
//   //     }
//   //     return encryptedAccessBox.get(DbConstants.ACCESS_TOKEN);
//   //   } on Exception catch (e) {
//   //     LogManager.logToConsole(e, "getSecuredAccessToken error");
//   //   }
//   //   return null;
//   // }
//   ///[TODO: fix issue with it later on]
//   // Future<void> setSecuredAccessToken({required String accessToken}) async {
//   //   await encryptedAccessBox.put(DbConstants.ACCESS_TOKEN, accessToken);
//   //   await encryptedAccessBox.flush();
//   // }
//
//   Future<String?> getPushToken() async {
//     return pushTokenBox.get(DbConstants.PUSH_TOKEN_BOX_KEY);
//   }
//
//   Future<UserData?> getLocalUserFromStorage() async {
//     return userBox.get(DbConstants.USER_DATA_KEY);
//   }
//
//   Future<String?> getLocalUnSecuredUserTokenFromStorage() async {
//     return userBox.get(DbConstants.USER_DATA_KEY)?.token;
//   }
//
//   Future<List<ReceivedNotification>> getCachedNotifications() async {
//     return receivedNotificationList.values.nonNulls.toList();
//   }
//
//   bool getIfUserhasAcceptLocalPrivacyPolicy() {
//     return privacyPolicyBox.get(DbConstants.HAS_ACCEPT_POLICY) ?? false;
//   }
// }
