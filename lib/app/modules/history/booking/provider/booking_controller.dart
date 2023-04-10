import 'package:app_example/app/modules/history/booking/model/booking_model.dart';
import 'package:app_example/app/modules/history/booking/provider/booking_state.dart';
import 'package:app_example/app/modules/history/booking/repository/booking_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BookingController extends StateNotifier<BookingState> {
  late final BookingRepository _serviceRepository;

  BookingController(this._serviceRepository) : super(BookingState()) {
    _init();
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final List<BookingModel>? listServiceNew = await _serviceRepository.getCurrentBooking();
    state = state.copyWith(isLoading: false, listBooking: listServiceNew);
  }
}

