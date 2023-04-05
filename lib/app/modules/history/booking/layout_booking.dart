
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../../core/router/app_router.dart';
import 'screen/booking_screen.dart';

class LayoutBookingHistory extends StatelessWidget {
  const LayoutBookingHistory({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/booking-history';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutBookingHistory()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const BookingHistoryScreen();
  }
}
