import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_product_state.freezed.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState({
    @Default([]) List<Uint8List> images,
}) = _AddProductState;
}
