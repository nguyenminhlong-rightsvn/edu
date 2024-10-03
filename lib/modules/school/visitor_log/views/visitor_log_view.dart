import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/globals.dart';
import 'package:interedu/routes/app_routes.dart';
import 'package:interedu/modules/school/visitor_log/controller/visitor_log_controller.dart';

class SchoolVisitorLogView extends GetView<SchoolVisitorLogController> {
  const SchoolVisitorLogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Visitor Log'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('School Visitor Log'),
            ElevatedButton(
              onPressed: () async {
                Globals globals = Globals();
                await globals.saveUserRole(null);
                Get.offAllNamed(AppRoutes.accountSelection);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
