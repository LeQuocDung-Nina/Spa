import 'package:app_example/app/modules/service/screen/service_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../core/router/app_router.dart';

class LayoutService extends StatelessWidget {
  const LayoutService({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/service';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutService()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ServiceScreen();
  }
}
