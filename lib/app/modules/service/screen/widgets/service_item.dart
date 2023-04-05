import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_color.dart';

class ServiceItem extends ConsumerWidget {
  const ServiceItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: COLOR_Line,
        ),
        borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(8),bottomRight: Radius.circular(8),topLeft: Radius.circular(8),topRight: Radius.circular(0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 80,
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/images/dichvu.png'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Combo chăm sóc da',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: COLOR_TITLE1,
                  ),
                ),
                const SizedBox(height: 10,),
               Container(
                 decoration:const BoxDecoration(
                   border: Border(
                     bottom: BorderSide(
                       color: COLOR_Line,
                       width: 1.0,
                     ),

                   ),
                 ),
               ),
                const SizedBox(height: 10,),
                const Text(
                  'Dịch vụ cho với chất lượng hàng đầu với thiết bị hiện đại nhất hiện nay ',
                  style: TextStyle(
                    fontSize: 11,
                    height: 1.5,
                    color:COLOR_DESC1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
