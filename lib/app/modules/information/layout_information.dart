
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.dart';
import 'screen/information_screen.dart';

class LayoutInformation extends StatelessWidget {
  const LayoutInformation({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/information';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutInformation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const InformationScreen();
  }
}
