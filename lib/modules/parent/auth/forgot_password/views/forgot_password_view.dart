import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/auth/forgot_password/controller/forgot_password_controller.dart';

class ParentForgotPasswordView extends GetView<ParentForgotPasswordController> {
  const ParentForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Forgot Password'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Forgot Password'),
          ],
        ),
      ),
    );
  }
}
