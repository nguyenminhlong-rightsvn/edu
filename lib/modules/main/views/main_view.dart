import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interedu/constants/enums.dart';
import 'package:interedu/constants/constants.dart';
import 'package:interedu/constants/app_strings.dart';
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
          height: 76,
          backgroundColor: AppColors.background,
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
      _buildHomeButton(controller.tabIndex.value == 0, context, 0),
      _buildSearchButton(controller.tabIndex.value == 1, context, 1),
      _buildScoutButton(controller.tabIndex.value == 2, context, 2),
      _buildProfileButton(controller.tabIndex.value == 3, context, 3),
    ];
  }

  List<BottomNavigationBarItem> _buildSchoolBottomBarItems(
    BuildContext context,
  ) {
    return [
      _buildHomeButton(controller.tabIndex.value == 0, context, 0),
      _buildSearchButton(controller.tabIndex.value == 1, context, 1),
      _buildFavoritesButton(controller.tabIndex.value == 2, context, 2),
      _buildScoutButton(controller.tabIndex.value == 3, context, 3),
      _buildProfileButton(controller.tabIndex.value == 4, context, 4),
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
    int index,
  ) {
    bool isParent = controller.currentRole.value == Role.parent;
    return _buildButton(
      isParent ? AppAssets.icHome : AppAssets.icFootprint,
      isParent ? AppStrings.menuHome : AppStrings.menuVisitorLog,
      isActive,
      context,
      index,
    );
  }

  BottomNavigationBarItem _buildSearchButton(
    bool isActive,
    BuildContext context,
    int index,
  ) {
    return _buildButton(
      AppAssets.icFind,
      AppStrings.menuSearch,
      isActive,
      context,
      index,
    );
  }

  BottomNavigationBarItem _buildScoutButton(
    bool isActive,
    BuildContext context,
    int index,
  ) {
    return _buildButton(
      AppAssets.icMessage,
      AppStrings.menuScout,
      isActive,
      context,
      index,
    );
  }

  BottomNavigationBarItem _buildFavoritesButton(
    bool isActive,
    BuildContext context,
    int index,
  ) {
    return _buildButton(
      AppAssets.icFavorite,
      AppStrings.menuFavorites,
      isActive,
      context,
      index,
    );
  }

  BottomNavigationBarItem _buildProfileButton(
    bool isActive,
    BuildContext context,
    int index,
  ) {
    return _buildButton(
      AppAssets.icUser,
      AppStrings.menuProfile,
      isActive,
      context,
      index,
    );
  }

  BottomNavigationBarItem _buildButton(
    String iconPath,
    String label,
    bool isActive,
    BuildContext context,
    int index,
  ) {
    bool isParent = controller.currentRole.value == Role.parent;
    int totalButtons = isParent ? 4 : 5;

    return BottomNavigationBarItem(
      icon: Container(
        height: 60,
        margin: EdgeInsets.only(
          left: index == 0 ? 10 : 0,
          right: index == totalButtons - 1 ? 10 : 0,
        ),
        padding: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
          color: isActive
              ? (isParent ? AppColors.primary : AppColors.secondary)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: isActive
                  ? ColorFilter.mode(AppColors.white, BlendMode.srcIn)
                  : ColorFilter.mode(
                      AppColors.bottomText,
                      BlendMode.srcIn,
                    ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                fontFamily: Constants.fontNotoSansJP,
                color: isActive ? AppColors.white : AppColors.bottomText,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
