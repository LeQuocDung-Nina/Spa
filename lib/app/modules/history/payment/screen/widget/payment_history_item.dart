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
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: COLOR_Line,
            width: 1.0,
          ),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(children: const [
                Icon(Icons.date_range,color: COLOR_TIME,size: 18,),
                SizedBox(width: 5,),
                Text('23 February 2023',style: TextStyle(fontSize: 11,color: COLOR_TIME),),
              ],),
              const Expanded(child: Align(alignment: Alignment.centerRight, child: Text('3.600.000đ',style: TextStyle(color: COLOR_WHITE,fontSize: 15,fontWeight: FontWeight.w400),))),
            ],
          ),
          const SizedBox(height: 10,),
          Row(children: const [
            Icon(Icons.circle,color: COLOR_D1,size: 9,),
            SizedBox(width: 5,),
            Text('Dịch vụ',style: TextStyle(color: COLOR_D1,fontSize: 15,fontWeight: FontWeight.w400),),
          ],),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Text('Điều trị nám chuyên sâu',style: TextStyle(color: COLOR_D1,fontSize: 11),),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.check_circle,color: COLOR_D1,size: 11,),
                    SizedBox(width: 5,),
                    Text('Đã thanh toán',style: TextStyle(color: COLOR_D1,fontSize: 11),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
