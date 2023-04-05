
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.dart';
import 'screen/branch_screen.dart';

class LayoutBranch extends StatelessWidget {
  const LayoutBranch({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/branch';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutBranch()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const BranchScreen();
  }
}
