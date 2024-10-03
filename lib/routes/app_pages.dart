import 'package:get/get.dart';

import 'app_routes.dart';
import 'package:interedu/modules/main/views/main_view.dart';
import 'package:interedu/modules/common/splash/views/splash_view.dart';
import 'package:interedu/modules/common/account_selection/views/account_selection_view.dart';
import 'package:interedu/modules/parent/welcome/views/welcome_view.dart';
import 'package:interedu/modules/parent/auth/login/views/login_view.dart';
import 'package:interedu/modules/parent/auth/register/views/register_view.dart';
import 'package:interedu/modules/parent/auth/forgot_password/views/forgot_password_view.dart';
import 'package:interedu/modules/parent/home/views/home_view.dart';
import 'package:interedu/modules/parent/filtered_search/views/filtered_search_view.dart';
import 'package:interedu/modules/parent/scout/views/scout_view.dart';
import 'package:interedu/modules/parent/profile/views/profile_view.dart';
import 'package:interedu/modules/school/auth/login/views/login_view.dart';
import 'package:interedu/modules/school/auth/forgot_password/views/forgot_password_view.dart';
import 'package:interedu/modules/school/visitor_log/views/visitor_log_view.dart';
import 'package:interedu/modules/school/filtered_search/views/filtered_search_view.dart';
import 'package:interedu/modules/school/favorites/views/favorites_view.dart';
import 'package:interedu/modules/school/scout/views/scout_view.dart';
import 'package:interedu/modules/school/profile/views/profile_view.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.accountSelection;

  static final routes = <GetPage<dynamic>>[
    // Common
    GetPage<dynamic>(
      name: AppRoutes.root,
      page: () => const MainView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.splash,
      page: () => const SplashView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.accountSelection,
      page: () => const AccountSelectionView(),
    ),

    // Parent
    GetPage<dynamic>(
      name: AppRoutes.parentWelcome,
      page: () => const ParentWelcomeView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentLogin,
      page: () => const ParentLoginView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentForgotPassword,
      page: () => const ParentForgotPasswordView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentRegister,
      page: () => const ParentRegisterView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentHome,
      page: () => const ParentHomeView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentFilteredSearch,
      page: () => const ParentFilteredSearchView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentScout,
      page: () => const ParentScoutView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.parentProfile,
      page: () => const ParentProfileView(),
    ),

    // School
    GetPage<dynamic>(
      name: AppRoutes.schoolLogin,
      page: () => const SchoolLoginView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolForgotPassword,
      page: () => const SchoolForgotPasswordView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolVisitorLog,
      page: () => const SchoolVisitorLogView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolFilteredSearch,
      page: () => const SchoolFilteredSearchView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolFavorites,
      page: () => const SchoolFavoritesView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolScout,
      page: () => const SchoolScoutView(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.schoolProfile,
      page: () => const SchoolProfileView(),
    ),
  ];
}
