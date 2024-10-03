import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/profile/controller/profile_controller.dart';

class ParentProfileView extends GetView<ParentProfileController> {
  const ParentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Profile'),
          ],
        ),
      ),
    );
  }
}
