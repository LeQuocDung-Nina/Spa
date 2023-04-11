// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  String? get id => throw _privateConstructorUsedError;
  String get namevi => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call({String? id, String namevi, String? photo, String address});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namevi = null,
    Object? photo = freezed,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$_BranchModelCopyWith(
          _$_BranchModel value, $Res Function(_$_BranchModel) then) =
      __$$_BranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String namevi, String? photo, String address});
}

/// @nodoc
class __$$_BranchModelCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$_BranchModel>
    implements _$$_BranchModelCopyWith<$Res> {
  __$$_BranchModelCopyWithImpl(
      _$_BranchModel _value, $Res Function(_$_BranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namevi = null,
    Object? photo = freezed,
    Object? address = null,
  }) {
    return _then(_$_BranchModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchModel implements _BranchModel {
  _$_BranchModel(
      {this.id, required this.namevi, this.photo, required this.address});

  factory _$_BranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_BranchModelFromJson(json);

  @override
  final String? id;
  @override
  final String namevi;
  @override
  final String? photo;
  @override
  final String address;

  @override
  String toString() {
    return 'BranchModel(id: $id, namevi: $namevi, photo: $photo, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BranchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namevi, namevi) || other.namevi == namevi) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namevi, photo, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      __$$_BranchModelCopyWithImpl<_$_BranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchModelToJson(
      this,
    );
  }
}

abstract class _BranchModel implements BranchModel {
  factory _BranchModel(
      {final String? id,
      required final String namevi,
      final String? photo,
      required final String address}) = _$_BranchModel;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$_BranchModel.fromJson;

  @override
  String? get id;
  @override
  String get namevi;
  @override
  String? get photo;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
