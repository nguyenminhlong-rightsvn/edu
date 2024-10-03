import 'package:get/get.dart';
import 'package:interedu/globals.dart';
import 'package:interedu/constants/enums.dart';
import 'package:interedu/modules/main/controller/main_controller.dart';
import 'package:interedu/routes/app_routes.dart';

class ParentLoginController extends GetxController {
  MainController mainController = Get.find<MainController>();
  Future<bool> login() async {
    Globals globals = Globals();
    await globals.saveUserRole(Role.parent);
    await mainController.getRoleAndSetTabIndex();
    Get.offAllNamed(AppRoutes.root);
    return true;
  }
}
