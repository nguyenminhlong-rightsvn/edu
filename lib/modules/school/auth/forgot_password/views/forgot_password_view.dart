import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/auth/forgot_password/controller/forgot_password_controller.dart';

class SchoolForgotPasswordView extends GetView<SchoolForgotPasswordController> {
  const SchoolForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Forgot Password'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Forgot Password'),
          ],
        ),
      ),
    );
  }
}
