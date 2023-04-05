
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../../core/router/app_router.dart';
import 'screen/payment_screen.dart';

class LayoutPaymentHistory extends StatelessWidget {
  const LayoutPaymentHistory({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/payment-history';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutPaymentHistory()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const PaymentHistoryScreen();
  }
}
