import 'package:flutter/cupertino.dart';
import 'package:interedu/modules/school/visitor_log/views/visitor_log_view.dart';

class SchoolVisitorLogRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => const SchoolVisitorLogView(),
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
