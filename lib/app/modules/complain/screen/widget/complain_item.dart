import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_color.dart';

class ComplainItem extends ConsumerWidget {
  const ComplainItem({required this.namevi,
    Key? key,
  }) : super(key: key);
  final String namevi;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Text(namevi!,style: const TextStyle(fontSize: 13,color: COLOR_BG),),
    );
  }
}
