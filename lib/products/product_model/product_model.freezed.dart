// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$createdAt', includeToJson: false)
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$updatedAt', includeToJson: false)
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$id', includeToJson: false)
  String get documentId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$permissions', includeToJson: false)
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String name,
      String status,
      String image,
      String productId,
      @JsonKey(name: '\$createdAt', includeToJson: false) String createdAt,
      @JsonKey(name: '\$updatedAt', includeToJson: false) String updatedAt,
      @JsonKey(name: '\$id', includeToJson: false) String documentId,
      @JsonKey(name: '\$permissions', includeToJson: false)
      List<String> permissions});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? image = null,
    Object? productId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documentId = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String status,
      String image,
      String productId,
      @JsonKey(name: '\$createdAt', includeToJson: false) String createdAt,
      @JsonKey(name: '\$updatedAt', includeToJson: false) String updatedAt,
      @JsonKey(name: '\$id', includeToJson: false) String documentId,
      @JsonKey(name: '\$permissions', includeToJson: false)
      List<String> permissions});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? image = null,
    Object? productId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documentId = null,
    Object? permissions = null,
  }) {
    return _then(_$_ProductModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {this.name = '',
      this.status = '',
      this.image = '',
      this.productId = '',
      @JsonKey(name: '\$createdAt', includeToJson: false) this.createdAt = '',
      @JsonKey(name: '\$updatedAt', includeToJson: false) this.updatedAt = '',
      @JsonKey(name: '\$id', includeToJson: false) this.documentId = '',
      @JsonKey(name: '\$permissions', includeToJson: false)
      final List<String> permissions = const []})
      : _permissions = permissions;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String productId;
  @override
  @JsonKey(name: '\$createdAt', includeToJson: false)
  final String createdAt;
  @override
  @JsonKey(name: '\$updatedAt', includeToJson: false)
  final String updatedAt;
  @override
  @JsonKey(name: '\$id', includeToJson: false)
  final String documentId;
  final List<String> _permissions;
  @override
  @JsonKey(name: '\$permissions', includeToJson: false)
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'ProductModel(name: $name, status: $status, image: $image, productId: $productId, createdAt: $createdAt, updatedAt: $updatedAt, documentId: $documentId, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      status,
      image,
      productId,
      createdAt,
      updatedAt,
      documentId,
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {final String name,
      final String status,
      final String image,
      final String productId,
      @JsonKey(name: '\$createdAt', includeToJson: false)
      final String createdAt,
      @JsonKey(name: '\$updatedAt', includeToJson: false)
      final String updatedAt,
      @JsonKey(name: '\$id', includeToJson: false) final String documentId,
      @JsonKey(name: '\$permissions', includeToJson: false)
      final List<String> permissions}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String get name;
  @override
  String get status;
  @override
  String get image;
  @override
  String get productId;
  @override
  @JsonKey(name: '\$createdAt', includeToJson: false)
  String get createdAt;
  @override
  @JsonKey(name: '\$updatedAt', includeToJson: false)
  String get updatedAt;
  @override
  @JsonKey(name: '\$id', includeToJson: false)
  String get documentId;
  @override
  @JsonKey(name: '\$permissions', includeToJson: false)
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
