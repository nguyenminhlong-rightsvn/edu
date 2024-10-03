import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:interedu/globals.dart';
import 'package:interedu/constants/enums.dart';

class MainController extends GetxController {
  final RxInt tabIndex = 0.obs;
  final Rx<Role> currentRole = Role.parent.obs;

  final List<GlobalKey<NavigatorState>> tabNavKeys = [];

  CupertinoTabController tabController = CupertinoTabController();

  @override
  void onInit() async {
    await getRoleAndSetTabIndex();
    super.onInit();
  }

  Future<void> getRoleAndSetTabIndex() async {
    Globals globals = Globals();
    Role? role = await globals.getUserRole();
    currentRole.value = role ?? Role.parent;

    if (currentRole.value == Role.parent) {
      tabNavKeys.addAll(
        List.generate(
          ParentBottomAppBarType.values.length,
          (_) => GlobalKey<NavigatorState>(),
        ),
      );
    } else {
      tabNavKeys.addAll(
        List.generate(
          SchoolBottomAppBarType.values.length,
          (_) => GlobalKey<NavigatorState>(),
        ),
      );
    }
  }

  void jumpToTab(int index, {String routeInTab = ''}) {
    tabIndex(index);
    tabController.index = index;
    if (routeInTab.isNotEmpty) getCurrentState()?.pushNamed(routeInTab);
  }

  NavigatorState? getCurrentState() => tabNavKeys[tabIndex.value].currentState;
}
