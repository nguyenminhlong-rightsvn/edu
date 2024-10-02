import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/visitor_log/controller/visitor_log_controller.dart';

class SchoolVisitorLogView extends GetView<SchoolVisitorLogController> {
  const SchoolVisitorLogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Visitor Log'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Visitor Log'),
          ],
        ),
      ),
    );
  }
}
