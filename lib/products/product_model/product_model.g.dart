// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String? ?? '',
      status: json['status'] as String? ?? '',
      image: json['image'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      createdAt: json[r'$createdAt'] as String? ?? '',
      updatedAt: json[r'$updatedAt'] as String? ?? '',
      documentId: json[r'$id'] as String? ?? '',
      permissions: (json[r'$permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'image': instance.image,
      'productId': instance.productId,
    };
