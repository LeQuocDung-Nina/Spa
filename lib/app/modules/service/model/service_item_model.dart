import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_item_model.freezed.dart';
part 'service_item_model.g.dart';
@freezed
class ServiceModel with _$ServiceModel {
  factory ServiceModel({
    required String id,
    required String photo,
    required String namevi,
    required String descvi,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, Object?> json)
  => _$ServiceModelFromJson(json);
}



