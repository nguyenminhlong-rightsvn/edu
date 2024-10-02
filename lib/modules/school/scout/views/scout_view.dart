import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/scout/controller/scout_controller.dart';

class SchoolScoutView extends GetView<SchoolScoutController> {
  const SchoolScoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Scout'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Scout'),
          ],
        ),
      ),
    );
  }
}
