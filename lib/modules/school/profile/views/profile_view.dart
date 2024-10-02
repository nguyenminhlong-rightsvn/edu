import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/profile/controller/profile_controller.dart';

class SchoolProfileView extends GetView<SchoolProfileController> {
  const SchoolProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Filtered Search'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Filtered Search'),
          ],
        ),
      ),
    );
  }
}
