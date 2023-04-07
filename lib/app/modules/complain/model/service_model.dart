import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';
@freezed
class ServiceModel with _$ServiceModel {
  factory ServiceModel({
    required String id,
    required String namevi,
    String? descvi,
    String? contentvi,
    String? photo,
    String? id_list,
    String? address,
    List<String>? gallery,
    List<Object>? video,



  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, Object?> json)
  => _$ServiceModelFromJson(json);
}
