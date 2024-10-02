import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/scout/controller/scout_controller.dart';

class ParentScoutView extends GetView<ParentScoutController> {
  const ParentScoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Scout'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Scout'),
          ],
        ),
      ),
    );
  }
}
