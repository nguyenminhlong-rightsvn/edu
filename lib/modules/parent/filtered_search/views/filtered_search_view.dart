import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/modules/parent/filtered_search/controller/filtered_search_controller.dart';

class ParentFilteredSearchView extends GetView<ParentFilteredSearchController> {
  const ParentFilteredSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Filtered Search'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Parent Filtered Search'),
          ],
        ),
      ),
    );
  }
}
