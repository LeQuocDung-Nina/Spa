import 'package:app_example/app/modules/history/booking/model/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_color.dart';


class BookingHistoryItem extends ConsumerWidget {
  const BookingHistoryItem({required this.bookingModel,
    Key? key,
  }) : super(key: key);

  final BookingModel bookingModel;

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
                    child: Text(bookingModel.booking_time,style: const TextStyle(color: COLOR_D2,fontSize: 25,fontWeight: FontWeight.bold,))
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
            children:  [
              const Text('Đặt lịch',style: TextStyle(color: COLOR_D1,fontSize: 15,fontWeight: FontWeight.w400),),
              const SizedBox(height: 10,),
              Text(bookingModel.name_service ,style: const TextStyle(color: COLOR_D1,fontSize: 11,fontWeight: FontWeight.w400),),
            ],
          )),
          const Icon(Icons.date_range,color: COLOR_D1,size: 35,),
        ],
      ),
    );
  }
}
