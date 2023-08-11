import 'dart:typed_data';

import 'package:hive/hive.dart';
part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  final String? productId;

  @HiveField(1)
  final String? productName;

  @HiveField(2)
  final String? storeName;

  @HiveField(3)
  final String productPrice;

  @HiveField(4)
  final String? categoryId;

  @HiveField(5)
  final List<Uint8List>? images;

  ProductModel({
    required this.productId,
    required this.productName,
    required this.storeName,
    required this.productPrice,
    required this.categoryId,
    required this.images});
}