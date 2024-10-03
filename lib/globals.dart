import 'package:interedu/constants/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Globals {
  String? role;

  Globals._internal();
  static final Globals _singleton = Globals._internal();

  factory Globals() => _singleton;

  Future<void> saveUserRole(Role? role) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (role == null) {
      await prefs.remove('role');
    } else {
      await prefs.setString('role', role.toString().split('.').last);
    }
  }

  Future<Role?> getUserRole() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? role = prefs.getString('role');
    if (role != null) {
      return Role.values
          .firstWhere((e) => e.toString().split('.').last == role);
    }
    return null;
  }
}
