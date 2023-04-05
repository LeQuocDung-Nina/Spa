
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../core/router/app_router.dart';
import 'screen/album_screen.dart';

class LayoutAlbum extends StatelessWidget {
  const LayoutAlbum({Key? key}) : super(key: key);

  // Định danh Route cho Screen
  static const String pathRoute = '/album';
  static GoRoute goRoute() {
    return GoRoute(
      path: pathRoute,
      pageBuilder: (context, state) =>
          AppRouter.customTransitionPage(state, const LayoutAlbum()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Albumcreen();
  }
}
