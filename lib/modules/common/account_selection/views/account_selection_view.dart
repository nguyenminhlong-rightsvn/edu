import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/common/account_selection/controller/account_selection_controller.dart';
import 'package:interedu/routes/app_routes.dart';

class AccountSelectionView extends GetView<AccountSelectionController> {
  const AccountSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Account Selection',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.parentLogin);
              },
              child: const Text('Parent Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.schoolLogin);
              },
              child: const Text('School Login'),
            ),
          ],
        ),
      ),
    );
  }
}
