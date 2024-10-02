import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/home/controller/home_controller.dart';

class ParentHomeView extends GetView<ParentHomeController> {
  const ParentHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Home'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Home'),
          ],
        ),
      ),
    );
  }
}
