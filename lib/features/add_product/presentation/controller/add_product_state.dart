import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jacksi_ltd_task/core/hive/product_model.dart';
part 'add_product_state.freezed.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState({
    @Default([]) List<Uint8List> images,
    @Default([]) List<ProductModel> products,
}) = _AddProductState;
}
