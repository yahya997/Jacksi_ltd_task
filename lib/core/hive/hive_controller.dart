import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jacksi_ltd_task/core/hive/product_model.dart';

class HiveController {

  static Box<ProductModel> getProductList() => Hive.box<ProductModel>('products_box');

  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProductModelAdapter());
    await Hive.openBox<ProductModel>('products_box');
  }



}
