import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interedu/setup_locator.dart';
import 'package:interedu/interedu_examinee_matching_mobile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const InterEduExamineeMatchingMobile());
}
