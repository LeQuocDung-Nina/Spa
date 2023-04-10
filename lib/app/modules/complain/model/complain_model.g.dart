// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplainModel _$$_ComplainModelFromJson(Map<String, dynamic> json) =>
    _$_ComplainModel(
      id: json['id'] as String?,
      fullname: json['fullname'] as String?,
      content: json['content'] as String?,
      dichvu: json['dichvu'] as String?,
      file_attach: json['file_attach'] as String?,
    );

Map<String, dynamic> _$$_ComplainModelToJson(_$_ComplainModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'content': instance.content,
      'dichvu': instance.dichvu,
      'file_attach': instance.file_attach,
    };
