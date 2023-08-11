import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';

class HiveController {

  static HiveController instance = HiveController._();

  HiveController._();

  factory HiveController() {
    return instance;
  }

  late final productsBox;


  Future<void> initHive() async {
    await Hive.initFlutter();
    productsBox = await Hive.openBox('products_box');
  }



}
