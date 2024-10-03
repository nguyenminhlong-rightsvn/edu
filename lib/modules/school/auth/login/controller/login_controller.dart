import 'package:get/get.dart';
import 'package:interedu/globals.dart';
import 'package:interedu/constants/enums.dart';
import 'package:interedu/routes/app_routes.dart';
import 'package:interedu/modules/main/controller/main_controller.dart';

class SchoolLoginController extends GetxController {
  MainController mainController = Get.find<MainController>();
  Future<bool> login() async {
    Globals globals = Globals();
    await globals.saveUserRole(Role.school);
    await mainController.getRoleAndSetTabIndex();
    Get.offAllNamed(AppRoutes.root);
    return true;
  }
}
