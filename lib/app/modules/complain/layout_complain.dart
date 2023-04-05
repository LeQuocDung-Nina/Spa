
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.dart';
import 'screen/complain_screen.dart';

class LayoutComplain extends StatelessWidget {
  const LayoutComplain({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/complain';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutComplain()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ComplainScreen();
  }
}
