import 'package:flutter/material.dart';
import 'package:go_roting_example/routing/router_delegate.dart';
// import 'package:go_roting_example/pages/about_page.dart';
// import 'package:go_roting_example/pages/dashboard2_page.dart';
// import 'package:go_roting_example/pages/dashboard_page.dart';
// import 'package:go_roting_example/pages/setting_page.dart';
// import 'package:go_roting_example/pages/settings2_page.dart';
// import 'package:go_roting_example/widgets/base_screen.dart';
// import 'package:go_roting_example/pages/home_page.dart';
import 'package:go_router/go_router.dart';
// import '../widgets/overlay_loading.dart';

class CustomRouter {
  CustomRouter();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorAKey =
  //     GlobalKey<NavigatorState>(debugLabel: 'HomePage');
  // static final _shellNavigatorBKey =
  //     GlobalKey<NavigatorState>(debugLabel: 'AboutPage');
  static List<RouteBase> routes = [];
  static GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        // redirect: (context, state) async {
        //   if (state.uri.toString() == '/') {
        //     return "/home";
        //   }
        //   return null;
        // },
        initialLocation: "/${FGRouterDelegate().getApps().first.pageId}",
        routes: [
          FGRouterDelegate().getRoutes(),
        ],
        // routes: [
        //   StatefulShellRoute.indexedStack(
        //     builder: (context, state, navigationShell) {
        //       return LoadingOverlay(
        //         child: BaseScreen(
        //           navigationShell: navigationShell,
        //         ),
        //       );
        //     },
        //     branches: [
        //       StatefulShellBranch(
        //         navigatorKey: _shellNavigatorAKey,
        //         routes: [
        //           GoRoute(
        //             path: '/home',
        //             pageBuilder: (context, state) {
        //               return const MaterialPage(
        //                 child: MyHomePage(title: 'Home Page'),
        //               );
        //             },
        //             routes: [
        //               GoRoute(
        //                   path: 'dashboard',
        //                   pageBuilder: (context, state) {
        //                     return const MaterialPage(
        //                       child: DashBoardPage(),
        //                     );
        //                   },
        //                   routes: [
        //                     GoRoute(
        //                       path: 'dashboard2',
        //                       pageBuilder: (context, state) {
        //                         return const MaterialPage(
        //                           child: DashBoardPage2(),
        //                         );
        //                       },
        //                     ),
        //                   ]),
        //             ],
        //           ),
        //         ],
        //       ),
        //       StatefulShellBranch(
        //         navigatorKey: _shellNavigatorBKey,
        //         routes: [
        //           GoRoute(
        //             path: '/about',
        //             pageBuilder: (context, state) {
        //               return const MaterialPage(
        //                 child: AboutPage(),
        //               );
        //             },
        //             routes: [
        //               GoRoute(
        //                 path: 'settings',
        //                 pageBuilder: (context, state) {
        //                   return const MaterialPage(
        //                     child: SettingsPage(),
        //                   );
        //                 },
        //               ),
        //               GoRoute(
        //                 path: 'settings2',
        //                 pageBuilder: (context, state) {
        //                   return const MaterialPage(
        //                     child: SettingsPage2(),
        //                   );
        //                 },
        //               )
        //             ],
        //           ),
        //         ],
        //       )
        //     ],
        //   )

        // ],
      );

  // _generateRoutes() async {
  //   List<GoRoute> routess = [];

  //   final widgets = WidgetGenerator().generate(10);
  //   final pageInfos = PageGenerator(widgets).generatePageInfos();

  //   for (var pageInf in pageInfos) {
  //     routess.add(

  //     );
  //   }
  // }

  //       showDialog(
  //   context: context,
  //   builder: (context) {
  //     return Center(
  //       child: Container(
  //         color: Colors.grey,
  //         height: 80,
  //         width: 150,
  //         child: const CircularProgressIndicator(),
  //       ),
  //     );
  //   },
  // );
}
