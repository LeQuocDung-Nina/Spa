import 'dart:convert';
import 'package:app_example/app/modules/history/booking/model/booking_model.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import '../../../../constants/api_url.dart';
import '../../../../core/service/api/dio_client.dart';



// final bookingRepoProvider = Provider<BookingRepository>(
//       (_) => BookingRepository(),
// );

class BookingRepository {
  final _apiClient = DioClient(Dio());

  //danh sách booking
  Future<List<BookingModel>?> getCurrentBooking() async {
    List<BookingModel>? listBooking = [];
    try {
      final response = await _apiClient.get(ApiUrl.booking);
      print("response:$response");

      if (response.statusCode == 200) {
        final mapResponse = jsonDecode(response.data);
        for (var booking in mapResponse) {
          listBooking.add(BookingModel.fromJson(booking));
        }
        return listBooking;
      } else {
        throw Exception('Failed to load booking');
      }
    } catch (e) {
      print("response1111:");
      throw Exception('Failed to load bookings: $e');
    }
  }
}
