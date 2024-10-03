import 'package:get/get.dart';
import 'package:interedu/modules/main/controller/main_controller.dart';
import 'package:interedu/modules/common/account_selection/controller/account_selection_controller.dart';
import 'package:interedu/modules/common/splash/controller/splash_controller.dart';
import 'package:interedu/modules/parent/welcome/controller/welcome_controller.dart';
import 'package:interedu/modules/parent/auth/login/controller/login_controller.dart';
import 'package:interedu/modules/parent/auth/register/controller/register_controller.dart';
import 'package:interedu/modules/parent/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:interedu/modules/parent/home/controller/home_controller.dart';
import 'package:interedu/modules/parent/filtered_search/controller/filtered_search_controller.dart';
import 'package:interedu/modules/parent/scout/controller/scout_controller.dart';
import 'package:interedu/modules/parent/profile/controller/profile_controller.dart';
import 'package:interedu/modules/school/auth/login/controller/login_controller.dart';
import 'package:interedu/modules/school/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:interedu/modules/school/visitor_log/controller/visitor_log_controller.dart';
import 'package:interedu/modules/school/filtered_search/controller/filtered_search_controller.dart';
import 'package:interedu/modules/school/favorites/controller/favorites_controller.dart';
import 'package:interedu/modules/school/scout/controller/scout_controller.dart';
import 'package:interedu/modules/school/profile/controller/profile_controller.dart';

void setupLocator() {
  // Controller
  Get
    // Main
    ..put<MainController>(MainController())

    // Common
    ..lazyPut<SplashController>(
      () => SplashController(),
      fenix: true,
    )
    ..lazyPut<AccountSelectionController>(
      () => AccountSelectionController(),
      fenix: true,
    )

    // Parent
    ..lazyPut<ParentWelcomeController>(
      () => ParentWelcomeController(),
      fenix: true,
    )
    ..lazyPut<ParentLoginController>(
      () => ParentLoginController(),
      fenix: true,
    )
    ..lazyPut<ParentRegisterController>(
      () => ParentRegisterController(),
      fenix: true,
    )
    ..lazyPut<ParentForgotPasswordController>(
      () => ParentForgotPasswordController(),
      fenix: true,
    )
    ..lazyPut<ParentHomeController>(
      () => ParentHomeController(),
      fenix: true,
    )
    ..lazyPut<ParentFilteredSearchController>(
      () => ParentFilteredSearchController(),
      fenix: true,
    )
    ..lazyPut<ParentScoutController>(
      () => ParentScoutController(),
      fenix: true,
    )
    ..lazyPut<ParentProfileController>(
      () => ParentProfileController(),
      fenix: true,
    )

    // School
    ..lazyPut<SchoolLoginController>(
      () => SchoolLoginController(),
      fenix: true,
    )
    ..lazyPut<SchoolForgotPasswordController>(
      () => SchoolForgotPasswordController(),
      fenix: true,
    )
    ..lazyPut<SchoolVisitorLogController>(
      () => SchoolVisitorLogController(),
      fenix: true,
    )
    ..lazyPut<SchoolFilteredSearchController>(
      () => SchoolFilteredSearchController(),
      fenix: true,
    )
    ..lazyPut<SchoolFavoritesController>(
      () => SchoolFavoritesController(),
      fenix: true,
    )
    ..lazyPut<SchoolScoutController>(
      () => SchoolScoutController(),
      fenix: true,
    )
    ..lazyPut<SchoolProfileController>(
      () => SchoolProfileController(),
      fenix: true,
    );
}
