// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  String get id => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get namevi => throw _privateConstructorUsedError;
  String get descvi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call({String id, String photo, String namevi, String descvi});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photo = null,
    Object? namevi = null,
    Object? descvi = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      descvi: null == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String photo, String namevi, String descvi});
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$_ServiceModel>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photo = null,
    Object? namevi = null,
    Object? descvi = null,
  }) {
    return _then(_$_ServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      descvi: null == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceModel implements _ServiceModel {
  _$_ServiceModel(
      {required this.id,
      required this.photo,
      required this.namevi,
      required this.descvi});

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  final String id;
  @override
  final String photo;
  @override
  final String namevi;
  @override
  final String descvi;

  @override
  String toString() {
    return 'ServiceModel(id: $id, photo: $photo, namevi: $namevi, descvi: $descvi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.namevi, namevi) || other.namevi == namevi) &&
            (identical(other.descvi, descvi) || other.descvi == descvi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photo, namevi, descvi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(
      this,
    );
  }
}

abstract class _ServiceModel implements ServiceModel {
  factory _ServiceModel(
      {required final String id,
      required final String photo,
      required final String namevi,
      required final String descvi}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  String get id;
  @override
  String get photo;
  @override
  String get namevi;
  @override
  String get descvi;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
