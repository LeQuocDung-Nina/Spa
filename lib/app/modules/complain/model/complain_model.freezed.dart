// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComplainModel _$ComplainModelFromJson(Map<String, dynamic> json) {
  return _ComplainModel.fromJson(json);
}

/// @nodoc
mixin _$ComplainModel {
  String? get id => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get dichvu => throw _privateConstructorUsedError;
  String? get file_attach => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplainModelCopyWith<ComplainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainModelCopyWith<$Res> {
  factory $ComplainModelCopyWith(
          ComplainModel value, $Res Function(ComplainModel) then) =
      _$ComplainModelCopyWithImpl<$Res, ComplainModel>;
  @useResult
  $Res call(
      {String? id,
      String? fullname,
      String? content,
      String? dichvu,
      String? file_attach});
}

/// @nodoc
class _$ComplainModelCopyWithImpl<$Res, $Val extends ComplainModel>
    implements $ComplainModelCopyWith<$Res> {
  _$ComplainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? content = freezed,
    Object? dichvu = freezed,
    Object? file_attach = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dichvu: freezed == dichvu
          ? _value.dichvu
          : dichvu // ignore: cast_nullable_to_non_nullable
              as String?,
      file_attach: freezed == file_attach
          ? _value.file_attach
          : file_attach // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplainModelCopyWith<$Res>
    implements $ComplainModelCopyWith<$Res> {
  factory _$$_ComplainModelCopyWith(
          _$_ComplainModel value, $Res Function(_$_ComplainModel) then) =
      __$$_ComplainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? fullname,
      String? content,
      String? dichvu,
      String? file_attach});
}

/// @nodoc
class __$$_ComplainModelCopyWithImpl<$Res>
    extends _$ComplainModelCopyWithImpl<$Res, _$_ComplainModel>
    implements _$$_ComplainModelCopyWith<$Res> {
  __$$_ComplainModelCopyWithImpl(
      _$_ComplainModel _value, $Res Function(_$_ComplainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? content = freezed,
    Object? dichvu = freezed,
    Object? file_attach = freezed,
  }) {
    return _then(_$_ComplainModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dichvu: freezed == dichvu
          ? _value.dichvu
          : dichvu // ignore: cast_nullable_to_non_nullable
              as String?,
      file_attach: freezed == file_attach
          ? _value.file_attach
          : file_attach // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComplainModel implements _ComplainModel {
  _$_ComplainModel(
      {this.id,
      this.fullname,
      required this.content,
      required this.dichvu,
      this.file_attach});

  factory _$_ComplainModel.fromJson(Map<String, dynamic> json) =>
      _$$_ComplainModelFromJson(json);

  @override
  final String? id;
  @override
  final String? fullname;
  @override
  final String? content;
  @override
  final String? dichvu;
  @override
  final String? file_attach;

  @override
  String toString() {
    return 'ComplainModel(id: $id, fullname: $fullname, content: $content, dichvu: $dichvu, file_attach: $file_attach)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplainModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dichvu, dichvu) || other.dichvu == dichvu) &&
            (identical(other.file_attach, file_attach) ||
                other.file_attach == file_attach));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullname, content, dichvu, file_attach);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplainModelCopyWith<_$_ComplainModel> get copyWith =>
      __$$_ComplainModelCopyWithImpl<_$_ComplainModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplainModelToJson(
      this,
    );
  }
}

abstract class _ComplainModel implements ComplainModel {
  factory _ComplainModel(
      {final String? id,
      final String? fullname,
      required final String? content,
      required final String? dichvu,
      final String? file_attach}) = _$_ComplainModel;

  factory _ComplainModel.fromJson(Map<String, dynamic> json) =
      _$_ComplainModel.fromJson;

  @override
  String? get id;
  @override
  String? get fullname;
  @override
  String? get content;
  @override
  String? get dichvu;
  @override
  String? get file_attach;
  @override
  @JsonKey(ignore: true)
  _$$_ComplainModelCopyWith<_$_ComplainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
