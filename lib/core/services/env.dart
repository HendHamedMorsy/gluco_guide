import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/app_constants.dart';

class Env {
  Env._();
  static Future<void> init() async {
    await dotenv.load(fileName: AppConstants.ENV_DEV_BASE);
    final String? currentEnvName = dotenv.env["ENV"]?.toLowerCase();
    await dotenv.load(fileName: "assets/env/env_$currentEnvName.env");
  }

  static String? get environmentName => dotenv.env["ENVIROMENT_NAME"];
  static String? get baseUrl => dotenv.env["BASE_URL"];
  static String? get erpUrl => dotenv.env["ERP_URL"];
  static String? get erpToken => dotenv.env["ERP_Token"];
  // static String? get crispWebsiteId => dotenv.env["CRISP_WEBSITE_ID"];
  // static String? get googleOauthClientId =>
  //     dotenv.env["GOOGLE_SIGN_IN_CLIENT_ID"];
  // static String? get stripeBaseUrl => dotenv.env["STRIPE_BASE_URL"];
  static String? get googleMapKey => dotenv.env["GMP"];
}
