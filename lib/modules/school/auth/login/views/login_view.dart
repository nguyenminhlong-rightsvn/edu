import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/auth/login/controller/login_controller.dart';

class SchoolLoginView extends GetView<SchoolLoginController> {
  const SchoolLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Login'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Login'),
          ],
        ),
      ),
    );
  }
}
