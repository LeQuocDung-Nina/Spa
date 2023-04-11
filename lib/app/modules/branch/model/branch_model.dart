import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';
@freezed
class BranchModel with _$BranchModel {
  factory BranchModel({
    String? id,
    required String namevi,
    String? photo,
    required String address  ,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, Object?> json)
  => _$BranchModelFromJson(json);
}





