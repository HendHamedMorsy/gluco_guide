import '../services/env.dart';

abstract class ApiConstants {
  static String url = Env.baseUrl ?? "URL  Not Found";
  static String erpUrl = Env.erpUrl ?? "ERP URL Not Found";
  // static String crispWebSiteId =
  //     Env.crispWebsiteId ?? "crispWebSiteId  Not Found";

  static String googleMapKey = Env.googleMapKey ?? "Google Map Key  Not Found";
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 30000);
  static const String contentType = "application/json";
  static const String checkAuth = "customer/auth/checkAuth";
  static const String register = "customer/auth/register";
  static const String login = "customer/auth/login";
  static const String resetPassword = "customer/resetPassword";
  static const String userProfile = "customer/getProfile";
  static const String logout = "customer/logout";
  static const String updateProfile = "customer/updateProfile";
  static const String changePassword = "customer/changePassword";
  static const String updateProfileImage = "customer/updateImage";
  static const String deleteAccount = "customer/delete";
  static const String getServices = "services";

  ///Erp Endpoints
  static const String createNewAddress = "resource/Address";
  static const String updateAddressData = createNewAddress;
  static const String customerAddressList = createNewAddress;
  static const String deleteCustomerAddress = createNewAddress;
  static const String getAddressDetails = createNewAddress;
  static const String createNewOrder = "resource/Sales%20Order";
  static const String orderList = "pickup/orders";
  static const String createPickup = "pickup/create";
  static const String getUserPoints = "resource/Customer";

  /// Payment
  static const String paymentCheckout = "payment/checkout";
  static const String paymentCardsList = "customer/cards";
  static const String defaultPaymentCard = "customer/defaultCard";
  static const String paymentWallet = "customer/paymentWallet";
  static const String walletAmount = "customer/walletAmount";
  static const String deleteCard = "customer/removeCard";
}
