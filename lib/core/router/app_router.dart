import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/analytics/analytics_route_observer.dart';
import '../../core/providers/analytics_provider.dart';
import '../../features/activities/presentation/screens/activity_form_screen.dart';
import '../../features/activities/presentation/screens/home_screen.dart';
import '../../features/categories/presentation/screens/categories_management_screen.dart';
import '../../features/insights/presentation/screens/insights_screen.dart';
import '../../features/occurrences/presentation/screens/activity_detail_screen.dart';
import '../../features/settings/presentation/screens/about_screen.dart';
import '../../features/settings/presentation/screens/demo_seeder_screen.dart';
import '../../features/settings/presentation/screens/privacy_policy_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import 'app_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final analytics = ref.watch(analyticsServiceProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoutes.home,
    observers: [AnalyticsRouteObserver(analytics)],
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.activityNew,
        name: 'activityNew',
        builder: (context, state) => const ActivityFormScreen(),
      ),
      GoRoute(
        path: '/activity/:id/edit',
        name: 'activityEdit',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return ActivityFormScreen(activityId: id);
        },
      ),
      GoRoute(
        path: '/activity/:id',
        name: 'activityDetail',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return ActivityDetailScreen(activityId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.insights,
        name: 'insights',
        builder: (context, state) => const InsightsScreen(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.categoriesSegment,
            name: 'categories',
            builder: (context, state) => const CategoriesManagementScreen(),
          ),
          GoRoute(
            path: AppRoutes.aboutSegment,
            name: 'about',
            builder: (context, state) => const AboutScreen(),
          ),
          GoRoute(
            path: AppRoutes.privacySegment,
            name: 'privacy',
            builder: (context, state) => const PrivacyPolicyScreen(),
          ),
          GoRoute(
            path: AppRoutes.demoSeederSegment,
            name: 'demoSeeder',
            builder: (context, state) => const DemoSeederScreen(),
          ),
        ],
      ),
    ],
  );
});
