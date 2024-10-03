import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/routes/app_routes.dart';
import 'package:interedu/constants/app_strings.dart';
import 'package:interedu/modules/school/auth/login/controller/login_controller.dart';

class SchoolLoginView extends GetView<SchoolLoginController> {
  const SchoolLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'School Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await controller.login();
              },
              child: const Text(AppStrings.loginButton),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pushNamed(AppRoutes.schoolForgotPassword);
              },
              child: const Text(AppStrings.forgotPasswordButton),
            ),
          ],
        ),
      ),
    );
  }
}
