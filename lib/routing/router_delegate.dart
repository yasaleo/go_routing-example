import 'package:flutter/material.dart';
import 'package:go_roting_example/pages/base_page.dart';
import 'package:go_roting_example/utils/global.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_nav.dart';
import '../widgets/overlay_loading.dart';

class FGRouterDelegate {
  FGRouterDelegate() {
    data = GlobalUtensils.routes;
  }

  List data = [];

  RouteBase getRoutes() {
    List<StatefulShellBranch> _shellBranches = [];
    for (var app in getApps()) {
      _shellBranches.add(
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/${app.pageId}',
              pageBuilder: (context, state) {
                return MaterialPage(
                  child: BasePage(
                    title: app.pageId,
                    key: Key(app.pageId),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }
    // print("_routes.length=======>>${_routes.length}");
    return StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) {
            return LoadingOverlay(
              child: BaseScreen(
                navigationShell: navigationShell,
              ),
            );
          },
      branches: [
        ..._shellBranches,
      ],
    );
  }

  List<AppModel> getApps() {
    List<AppModel> _apps = [];
    for (var app in data) {
      String pageId = app['appId'];
      List? _menuGroup = app['menuGroup'];
      _apps.add(AppModel(menuGroup: _menuGroup, pageId: pageId));
    }
    return _apps;
  }
}

class AppModel {
  List? menuGroup;
  String pageId;
  AppModel({
    required this.menuGroup,
    required this.pageId,
  });
}
