import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/auth/login/controller/login_controller.dart';

class ParentLoginView extends GetView<ParentLoginController> {
  const ParentLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Parent Login',
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
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
