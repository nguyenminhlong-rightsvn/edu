import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/routes/app_pages.dart';

class InterEduExamineeMatchingMobile extends StatelessWidget {
  const InterEduExamineeMatchingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
