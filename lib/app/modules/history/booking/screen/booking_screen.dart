import 'package:app_example/app/modules/history/booking/model/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../service/constants/app_color.dart';
import '../../../service/constants/app_style.dart';
import '../provider/booking_state.dart';
import 'widget/booking_history_item.dart';

class BookingHistoryScreen extends ConsumerWidget {
  const BookingHistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      backgroundColor: COLOR_BG,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: COLOR_D1,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgapp.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text("Lịch sử đặt lịch",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[
              _ListBookingHistory(),
            ],
          ),
        ),
      ),
    );
  }
}


// Danh sách lịch sử thanh toán
class _ListBookingHistory extends ConsumerWidget {
  const _ListBookingHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateBooking = ref.watch(bookingProvider);
    return
    (stateBooking.listBooking?.length != null) ?
     AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: stateBooking.listBooking!.length,
      crossAxisCount: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) => BookingHistoryItem(
          bookingModel: BookingModel(name_service: stateBooking.listBooking![index].name_service, booking_time: stateBooking.listBooking![index].booking_time)),
    ):const Center(child: Text('Chưa có lịch sử',style: TextStyle(color: COLOR_D1),));
  }
}