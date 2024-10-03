import 'package:flutter/cupertino.dart';
import 'package:interedu/modules/school/scout/views/scout_view.dart';

class SchoolScoutRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => const SchoolScoutView(),
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
