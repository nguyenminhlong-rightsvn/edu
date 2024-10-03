import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/auth/register/controller/register_controller.dart';

class ParentRegisterView extends GetView<ParentRegisterController> {
  const ParentRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Register'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Register'),
          ],
        ),
      ),
    );
  }
}
