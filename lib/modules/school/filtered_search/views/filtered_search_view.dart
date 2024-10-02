import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/school/filtered_search/controller/filtered_search_controller.dart';

class SchoolFilteredSearchView extends GetView<SchoolFilteredSearchController> {
  const SchoolFilteredSearchView({super.key});

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
