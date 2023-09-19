import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height / 844;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width / 390;
  }

  static Future<void> getSite(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) {
      throw 'Could not launch';
    }
  }
}
