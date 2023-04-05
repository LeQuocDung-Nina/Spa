
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../../core/router/app_router.dart';
import 'screen/treatment_screen.dart';

class LayoutTreatmentHistory extends StatelessWidget {
  const LayoutTreatmentHistory({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/treatment-history';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutTreatmentHistory()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const TreatmentHistoryScreen();
  }
}
