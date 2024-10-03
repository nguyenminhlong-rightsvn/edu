import 'package:flutter/cupertino.dart';
import 'package:interedu/modules/parent/home/views/home_view.dart';

class ParentHomeRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (_) => const ParentHomeView(),
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
