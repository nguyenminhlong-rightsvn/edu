import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interedu/theme/app_colors.dart';
import 'package:interedu/modules/main/controller/main_controller.dart';
import 'package:interedu/routes/parent/parent_filtered_search_routes.dart';
import 'package:interedu/routes/parent/parent_profile_routes.dart';
import 'package:interedu/routes/parent/parent_home_routes.dart';
import 'package:interedu/routes/parent/parent_scout_routes.dart';
import 'package:interedu/routes/school/school_favorites_routes.dart';
import 'package:interedu/routes/school/school_filtered_search_routes.dart';
import 'package:interedu/routes/school/school_profile_routes.dart';
import 'package:interedu/routes/school/school_scout_routes.dart';
import 'package:interedu/routes/school/school_visitor_log_routes.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildMainView(context, true);
  }

  Widget _buildMainView(BuildContext context, bool isParent) {
    return Obx(
      () => CupertinoTabScaffold(
        controller: controller.tabController,
        tabBar: CupertinoTabBar(
          height: 72,
          border: null,
          backgroundColor: Colors.white,
          items: [
            _buildHomeButton(controller.tabIndex.value == 0, context),
            _buildCourseButton(controller.tabIndex.value == 1, context),
            _buildNotificationButton(controller.tabIndex.value == 2, context),
            _buildSettingButton(controller.tabIndex.value == 3, context),
          ],
          onTap: (index) {
            controller.tabIndex(index);
          },
        ),
        tabBuilder: (context, index) {
          if (isParent) {
            return _buildParentTabView(context, index);
          } else {
            return _buildSchoolTabView(context, index);
          }
        },
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  Widget _buildParentTabView(BuildContext context, int index) {
    switch (index) {
      case 0:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: ParentHomeRoutes.onGenerateRoute,
        );
      case 1:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: ParentFilteredSearchRoutes.onGenerateRoute,
        );
      case 2:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: ParentScoutRoutes.onGenerateRoute,
        );
      case 3:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: ParentProfileRoutes.onGenerateRoute,
        );
      default:
        return const CupertinoTabView();
    }
  }

  Widget _buildSchoolTabView(BuildContext context, int index) {
    switch (index) {
      case 0:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: SchoolVisitorLogRoutes.onGenerateRoute,
        );
      case 1:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: SchoolFilteredSearchRoutes.onGenerateRoute,
        );
      case 2:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: SchoolFavoritesRoutes.onGenerateRoute,
        );
      case 3:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: SchoolScoutRoutes.onGenerateRoute,
        );
      case 4:
        return CupertinoTabView(
          navigatorKey: controller.tabNavKeys[index],
          onGenerateRoute: SchoolProfileRoutes.onGenerateRoute,
        );
      default:
        return const CupertinoTabView();
    }
  }

  BottomNavigationBarItem _buildHomeButton(
      bool isActive, BuildContext context) {
    return _buildButton(
      'Home',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildCourseButton(
      bool isActive, BuildContext context) {
    return _buildButton(
      'Search',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildNotificationButton(
      bool isActive, BuildContext context) {
    return _buildButton(
      'Scout',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildSettingButton(
      bool isActive, BuildContext context) {
    return _buildButton(
      'Profile',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildButton(
    String label,
    bool isActive,
    BuildContext context,
  ) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              label,
              style: isActive
                  ? TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w800,
                    )
                  : TextStyle(
                      fontSize: 14,
                      color: AppColors.primary.withOpacity(0.7),
                      fontWeight: FontWeight.w700,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
