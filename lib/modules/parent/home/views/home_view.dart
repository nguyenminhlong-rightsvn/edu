import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/globals.dart';
import 'package:interedu/routes/app_routes.dart';
import 'package:interedu/modules/parent/home/controller/home_controller.dart';

class ParentHomeView extends GetView<ParentHomeController> {
  const ParentHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Parent Home'),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pushNamed(AppRoutes.parentArticle);
              },
              child: const Text('Article View'),
            ),
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
