import 'package:equatable/equatable.dart';

abstract class ProductsEvent extends Equatable {

  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class ChangeCategoryIndex extends ProductsEvent {
  final int index;

  const ChangeCategoryIndex({required this.index});

  @override
  List<Object> get props => [index];
}

class ChangeListDisplay extends ProductsEvent{}