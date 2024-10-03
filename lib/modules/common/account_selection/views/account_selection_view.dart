import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/theme/app_colors.dart';
import 'package:interedu/theme/app_assets.dart';
import 'package:interedu/routes/app_routes.dart';
import 'package:interedu/modules/common/account_selection/controller/account_selection_controller.dart';

class AccountSelectionView extends GetView<AccountSelectionController> {
  const AccountSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              AppAssets.logo,
              width: 200,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.parentLogin);
                  },
                  child: const Text('Parent Login'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.schoolLogin);
                  },
                  child: const Text('School Login'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
