import 'package:url_launcher/url_launcher.dart';

final class UrlLauncherService {
  /// phone call
  static Future<void> makePhoneCall(String phoneNumber) async {
    if (await canLaunchUrl('tel:$phoneNumber'.toUri)) {
      await launchUrl('tel:$phoneNumber'.toUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  /// send email
  static Future<void> sendEmail(
      String email, String subject, String body) async {
    if (await canLaunchUrl('mailto:$email?subject=$subject&body=$body'.toUri)) {
      await launchUrl('mailto:$email?subject=$subject&body=$body'.toUri);
    } else {
      throw 'Could not launch email';
    }
  }

  /// open url
  static Future<void> openUrl(String url) async {
    if (await canLaunchUrl(url.toUri)) {
      await launchUrl(url.toUri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

extension UriParse on String {
  Uri get toUri => Uri.parse(this);
}
