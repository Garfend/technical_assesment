import 'package:go_router/go_router.dart';

import '../../features/home/ui/pages/home_page.dart';
import '../../features/profile/ui/pages/profile_page.dart';

class AppRoutes {
  AppRoutes._();

  static const homeRoute = '/home';
  static const profileRoute = '/profile';
}

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.homeRoute,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoutes.homeRoute,
        name: 'home',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
      ),

      GoRoute(
        path: AppRoutes.profileRoute,
        name: 'profile',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ProfilePage()),
      ),
    ],
  );
}
