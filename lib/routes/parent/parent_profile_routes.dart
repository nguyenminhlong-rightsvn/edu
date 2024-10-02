import 'package:flutter/cupertino.dart';
import 'package:interedu/modules/parent/profile/views/profile_view.dart';

class ParentProfileRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => const ParentProfileView(),
          settings: routeSettings,
        );
      default:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => CupertinoPageScaffold(
            child: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
