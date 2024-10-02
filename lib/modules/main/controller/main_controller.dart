import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:interedu/constants/enums.dart';

class MainController extends GetxController {
  final RxInt tabIndex = 0.obs;
  final Rx<Role> currentRole = Role.parent.obs;

  final List<GlobalKey<NavigatorState>> tabNavKeys = List.generate(
    ParentBottomAppBarType.values.length,
    (_) => GlobalKey<NavigatorState>(),
  );

  CupertinoTabController tabController = CupertinoTabController();

  @override
  void onInit() async {
    super.onInit();
    print('MainController onInit');
  }

  void jumpToTab(int index, {String routeInTab = ''}) {
    tabIndex(index);
    tabController.index = index;
    if (routeInTab.isNotEmpty) getCurrentState()?.pushNamed(routeInTab);
  }

  NavigatorState? getCurrentState() => tabNavKeys[tabIndex.value].currentState;
}
