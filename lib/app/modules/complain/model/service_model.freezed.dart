// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

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
  String get namevi => throw _privateConstructorUsedError;
  String? get descvi => throw _privateConstructorUsedError;
  String? get contentvi => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get id_list => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<String>? get gallery => throw _privateConstructorUsedError;
  List<Object>? get video => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String namevi,
      String? descvi,
      String? contentvi,
      String? photo,
      String? id_list,
      String? address,
      List<String>? gallery,
      List<Object>? video});
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
    Object? namevi = null,
    Object? descvi = freezed,
    Object? contentvi = freezed,
    Object? photo = freezed,
    Object? id_list = freezed,
    Object? address = freezed,
    Object? gallery = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      descvi: freezed == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String?,
      contentvi: freezed == contentvi
          ? _value.contentvi
          : contentvi // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      id_list: freezed == id_list
          ? _value.id_list
          : id_list // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
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
  $Res call(
      {String id,
      String namevi,
      String? descvi,
      String? contentvi,
      String? photo,
      String? id_list,
      String? address,
      List<String>? gallery,
      List<Object>? video});
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
    Object? namevi = null,
    Object? descvi = freezed,
    Object? contentvi = freezed,
    Object? photo = freezed,
    Object? id_list = freezed,
    Object? address = freezed,
    Object? gallery = freezed,
    Object? video = freezed,
  }) {
    return _then(_$_ServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      descvi: freezed == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String?,
      contentvi: freezed == contentvi
          ? _value.contentvi
          : contentvi // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      id_list: freezed == id_list
          ? _value.id_list
          : id_list // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceModel implements _ServiceModel {
  _$_ServiceModel(
      {required this.id,
      required this.namevi,
      this.descvi,
      this.contentvi,
      this.photo,
      this.id_list,
      this.address,
      final List<String>? gallery,
      final List<Object>? video})
      : _gallery = gallery,
        _video = video;

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  final String id;
  @override
  final String namevi;
  @override
  final String? descvi;
  @override
  final String? contentvi;
  @override
  final String? photo;
  @override
  final String? id_list;
  @override
  final String? address;
  final List<String>? _gallery;
  @override
  List<String>? get gallery {
    final value = _gallery;
    if (value == null) return null;
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Object>? _video;
  @override
  List<Object>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceModel(id: $id, namevi: $namevi, descvi: $descvi, contentvi: $contentvi, photo: $photo, id_list: $id_list, address: $address, gallery: $gallery, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namevi, namevi) || other.namevi == namevi) &&
            (identical(other.descvi, descvi) || other.descvi == descvi) &&
            (identical(other.contentvi, contentvi) ||
                other.contentvi == contentvi) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.id_list, id_list) || other.id_list == id_list) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            const DeepCollectionEquality().equals(other._video, _video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      namevi,
      descvi,
      contentvi,
      photo,
      id_list,
      address,
      const DeepCollectionEquality().hash(_gallery),
      const DeepCollectionEquality().hash(_video));

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
      required final String namevi,
      final String? descvi,
      final String? contentvi,
      final String? photo,
      final String? id_list,
      final String? address,
      final List<String>? gallery,
      final List<Object>? video}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  String get id;
  @override
  String get namevi;
  @override
  String? get descvi;
  @override
  String? get contentvi;
  @override
  String? get photo;
  @override
  String? get id_list;
  @override
  String? get address;
  @override
  List<String>? get gallery;
  @override
  List<Object>? get video;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
