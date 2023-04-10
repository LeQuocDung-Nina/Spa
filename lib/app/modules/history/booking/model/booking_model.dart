import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';
@freezed
class BookingModel with _$BookingModel {
  factory BookingModel({
    String? id,
    required String name_service,
    String? name_address,
    String? name_technician  ,
    String? id_service,
    String? id_member,
    required String booking_time,
    String? id_address,
    String? id_technician,
    String? content,
    String? type,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, Object?> json)
  => _$BookingModelFromJson(json);
}





