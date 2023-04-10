// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingModel _$$_BookingModelFromJson(Map<String, dynamic> json) =>
    _$_BookingModel(
      id: json['id'] as String?,
      name_service: json['name_service'] as String,
      name_address: json['name_address'] as String?,
      name_technician: json['name_technician'] as String?,
      id_service: json['id_service'] as String?,
      id_member: json['id_member'] as String?,
      booking_time: json['booking_time'] as String,
      id_address: json['id_address'] as String?,
      id_technician: json['id_technician'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_BookingModelToJson(_$_BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_service': instance.name_service,
      'name_address': instance.name_address,
      'name_technician': instance.name_technician,
      'id_service': instance.id_service,
      'id_member': instance.id_member,
      'booking_time': instance.booking_time,
      'id_address': instance.id_address,
      'id_technician': instance.id_technician,
      'content': instance.content,
      'type': instance.type,
    };
