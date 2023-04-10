import 'package:app_example/app/modules/history/booking/model/booking_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/booking_repository.dart';
import 'booking_controller.dart';

class BookingState {
  final List<BookingModel>? listBooking;
  final bool isLoading;
  BookingState({this.listBooking, this.isLoading = true});
  BookingState copyWith({List<BookingModel>? listBooking, bool? isLoading}) {
    return BookingState(
        isLoading: isLoading ?? this.isLoading,
        listBooking: listBooking ?? this.listBooking);
  }
}


final bookingRepositoryProvider = Provider<BookingRepository>((ref) {
  return BookingRepository();
});

final bookingProvider = StateNotifierProvider<BookingController, BookingState>(
      (ref) => BookingController(ref.watch(bookingRepositoryProvider)),
);
