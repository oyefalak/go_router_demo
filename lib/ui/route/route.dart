import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/ui/home/home.dart';
import 'package:go_router_demo/ui/profile/profile.dart';
import 'package:go_router_demo/ui/route/routes_keys.dart';
import 'package:go_router_demo/ui/settings/settings.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    /// Home Route
    GoRoute(
      name: 'home',
      path: RouteKeys.home,
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),

    /// Settings Route
    GoRoute(
      name: 'settings',
      path: RouteKeys.settings,
      builder: (BuildContext context, GoRouterState state) {
        return const Settings();
      },
    ),

    /// Profile Route
    GoRoute(
      name: 'profile',
      path: '${RouteKeys.settings}${RouteKeys.profile}',
      builder: (BuildContext context, GoRouterState state) {
        /// Extract query parameters
        final String? name = state.uri.queryParameters['name'];
        return Profile(name: name ?? '');
      },
    ),
  ],
);
