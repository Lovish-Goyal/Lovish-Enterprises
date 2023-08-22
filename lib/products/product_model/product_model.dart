// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    @Default('') String name,
    @Default('') String status,
    @Default('') String image,
    @Default('') String productId,
     @JsonKey(name: '\$createdAt', includeToJson: false)
    @Default('')
    String createdAt,
    @JsonKey(name: '\$updatedAt', includeToJson: false)
    @Default('')
    String updatedAt,
    @JsonKey(name: '\$id', includeToJson: false) @Default('') String documentId,
    @JsonKey(name: '\$permissions', includeToJson: false)
    @Default([])
    List<String> permissions,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
