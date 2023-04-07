// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as String,
      namevi: json['namevi'] as String,
      descvi: json['descvi'] as String?,
      contentvi: json['contentvi'] as String?,
      photo: json['photo'] as String?,
      id_list: json['id_list'] as String?,
      address: json['address'] as String?,
      gallery:
          (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList(),
      video:
          (json['video'] as List<dynamic>?)?.map((e) => e as Object).toList(),
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namevi': instance.namevi,
      'descvi': instance.descvi,
      'contentvi': instance.contentvi,
      'photo': instance.photo,
      'id_list': instance.id_list,
      'address': instance.address,
      'gallery': instance.gallery,
      'video': instance.video,
    };
