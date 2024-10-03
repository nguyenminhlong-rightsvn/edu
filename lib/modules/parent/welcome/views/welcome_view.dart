import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/welcome/controller/welcome_controller.dart';

class ParentWelcomeView extends GetView<ParentWelcomeController> {
  const ParentWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Welcome'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Welcome'),
          ],
        ),
      ),
    );
  }
}
