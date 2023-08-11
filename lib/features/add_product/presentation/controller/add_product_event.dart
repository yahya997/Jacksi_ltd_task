import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

abstract class AddProductEvent extends Equatable {

  const AddProductEvent();

  @override
  List<Object> get props => [];
}

class AddImageEvent extends AddProductEvent {}

class RemoveImageEvent extends AddProductEvent {
  final Uint8List image;

  const RemoveImageEvent({required this.image});

  @override
  List<Object> get props => [image];

}

class AddNewProduct extends AddProductEvent{
  final String productName;
  final String productPrice;
  final String storeName;
  final String category;

  const AddNewProduct({
    required this.productName,
    required this.productPrice,
    required this.storeName,
    required this.category,
  });
}