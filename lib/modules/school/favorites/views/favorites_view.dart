import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/favorites/controller/favorites_controller.dart';

class SchoolFavoritesView extends GetView<SchoolFavoritesController> {
  const SchoolFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Favorites'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('School Favorites'),
          ],
        ),
      ),
    );
  }
}
