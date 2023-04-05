import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_color.dart';

class BookingHistoryItem extends ConsumerWidget {
  const BookingHistoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration:  BoxDecoration(
        border: Border.all(
          color: COLOR_Line,width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              children:[
                Container(
                    width: 50,
                    height: 40,
                    alignment: Alignment.center,
                    decoration:const BoxDecoration(
                      color: COLOR_BGTIME1,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                    ),
                    child: const Text('23',style: TextStyle(color: COLOR_D2,fontSize: 25,fontWeight: FontWeight.bold,))
                   ),
                Container(
                    width: 50,
                    height: 20,
                    alignment: Alignment.center,
                    decoration:const BoxDecoration(
                      color: COLOR_BGTIME2,
                    ),
                    child: const Text('Feb 2023',style: TextStyle(color: COLOR_D2,fontSize: 8,backgroundColor: COLOR_BGTIME2,))),
              ],
            ),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Đặt lịch',style: TextStyle(color: COLOR_D1,fontSize: 15,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('Chăm sóc da theo liệu trình',style: TextStyle(color: COLOR_D1,fontSize: 11,fontWeight: FontWeight.w400),),
            ],
          )),
          const Icon(Icons.date_range,color: COLOR_D1,size: 35,),
        ],
      ),
    );
  }
}
