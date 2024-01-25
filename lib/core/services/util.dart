import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  Utils._();
  factory Utils.instance() => Utils._();
  // all ur_launch methods
  Future<void> launchInBrowser(String? url) async {
    if (url == null) return;
    Uri requestedUri = Uri.dataFromString(url);

    if (await canLaunchUrl(requestedUri)) {
      await launchUrl(requestedUri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchWhatsappBrowser(String? whatsapp) async {
    if (whatsapp == null) return;
    Uri requestedUri = Uri.parse("tel:$whatsapp");
    if (await canLaunchUrl(requestedUri)) {
      await launchUrl(
        Uri.parse("https://wa.me/$whatsapp"),
      );
    } else {
      throw 'Could not launch $whatsapp';
    }
  }

  Future<void> sendEmail(String toEmail,
      {required String subject, required String message}) async {
    final String emailLaunchUri =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
    debugPrint("%%%%%% ${emailLaunchUri.toString()}");
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(
        emailLaunchUri.toString(),
      );
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  Future<void> callPhone(
    String? phone,
  ) async {
    if (phone == null) return;
    Uri requestedUri = Uri.parse("tel:$phone");
    if (await canLaunchUrl(requestedUri)) {
      await launchUrl(
        requestedUri,
      );
    } else {
      throw 'Could not launch $phone';
    }
  }

  Future<void> launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInWebViewWithDomStorage(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableDomStorage: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }

  // end of all ur_launch methods
}
