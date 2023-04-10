import 'package:freezed_annotation/freezed_annotation.dart';

part 'complain_model.freezed.dart';
part 'complain_model.g.dart';
@freezed
class ComplainModel with _$ComplainModel {
  factory ComplainModel({
    String? id,
    String? fullname,
    required String? content,
    required String? dichvu,
    String? file_attach,



  }) = _ComplainModel;

  factory ComplainModel.fromJson(Map<String, Object?> json)
  => _$ComplainModelFromJson(json);
}
