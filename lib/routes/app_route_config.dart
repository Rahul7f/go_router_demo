import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/Screen/about.dart';
import 'package:go_router_demo/Screen/home.dart';
import 'package:go_router_demo/Screen/page_not_found.dart';
import 'package:go_router_demo/Screen/profile.dart';

import 'app_route_constant.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: MyAppRouteConstant.homeRouteName,

        pageBuilder: (context, state) => const MaterialPage( child: Home()),
      ),
      GoRoute(
        path: "/profile",
        name: MyAppRouteConstant.profileRouteName,
        pageBuilder: (context, state) => const MaterialPage(child: Profile()),
      ),
      GoRoute(
        path: "/about/:username/:userid",
        name: MyAppRouteConstant.aboutRouteName,
        pageBuilder: (context, state) => MaterialPage(
            child: About(
          username: state.params["username"]!,
          user_id: state.params["userid"]!,
        )),
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: PageNotFoundScreen());
    },
  );
}
