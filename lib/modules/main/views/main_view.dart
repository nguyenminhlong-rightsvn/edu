import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interedu/constants/enums.dart';
import 'package:interedu/theme/app_assets.dart';
import 'package:interedu/theme/app_colors.dart';
import 'package:interedu/modules/main/controller/main_controller.dart';
import 'package:interedu/routes/parent/parent_home_routes.dart';
import 'package:interedu/routes/parent/parent_scout_routes.dart';
import 'package:interedu/routes/parent/parent_profile_routes.dart';
import 'package:interedu/routes/parent/parent_filtered_search_routes.dart';
import 'package:interedu/routes/school/school_scout_routes.dart';
import 'package:interedu/routes/school/school_profile_routes.dart';
import 'package:interedu/routes/school/school_favorites_routes.dart';
import 'package:interedu/routes/school/school_visitor_log_routes.dart';
import 'package:interedu/routes/school/school_filtered_search_routes.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isParent = controller.currentRole.value == Role.parent;

      return CupertinoTabScaffold(
        controller: controller.tabController,
        tabBar: CupertinoTabBar(
          height: 72,
          border: null,
          backgroundColor: Colors.white,
          items: isParent
              ? _buildParentBottomBarItems(context)
              : _buildSchoolBottomBarItems(context),
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
      );
    });
  }

  List<BottomNavigationBarItem> _buildParentBottomBarItems(
    BuildContext context,
  ) {
    return [
      _buildHomeButton(controller.tabIndex.value == 0, context),
      _buildSearchButton(controller.tabIndex.value == 1, context),
      _buildScoutButton(controller.tabIndex.value == 2, context),
      _buildProfileButton(controller.tabIndex.value == 3, context),
    ];
  }

  List<BottomNavigationBarItem> _buildSchoolBottomBarItems(
    BuildContext context,
  ) {
    return [
      _buildHomeButton(controller.tabIndex.value == 0, context),
      _buildSearchButton(controller.tabIndex.value == 1, context),
      _buildFavoritesButton(controller.tabIndex.value == 2, context),
      _buildScoutButton(controller.tabIndex.value == 3, context),
      _buildProfileButton(controller.tabIndex.value == 4, context),
    ];
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
    bool isActive,
    BuildContext context,
  ) {
    bool isParent = controller.currentRole.value == Role.parent;
    return _buildButton(
      isParent ? AppAssets.icHome : AppAssets.icFootprint,
      'Home',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildSearchButton(
    bool isActive,
    BuildContext context,
  ) {
    return _buildButton(
      AppAssets.icFind,
      'Search',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildScoutButton(
    bool isActive,
    BuildContext context,
  ) {
    return _buildButton(
      AppAssets.icMessage,
      'Scout',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildFavoritesButton(
    bool isActive,
    BuildContext context,
  ) {
    return _buildButton(
      AppAssets.icFavorite,
      'Favorites',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildProfileButton(
    bool isActive,
    BuildContext context,
  ) {
    return _buildButton(
      AppAssets.icUser,
      'Profile',
      isActive,
      context,
    );
  }

  BottomNavigationBarItem _buildButton(
    String iconPath,
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
            SvgPicture.asset(
              iconPath,
              width: 38,
              height: 38,
            ),
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
