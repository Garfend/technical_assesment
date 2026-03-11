import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes/app_router.dart';

extension GoRouterExtension on BuildContext {
  void goToHome() => go(AppRoutes.homeRoute);

  void goTopProfile() => go(AppRoutes.profileRoute);

  void goBack() {
    if (canPop()) {
      pop();
    } else {
      go(AppRoutes.homeRoute);
    }
  }
}
