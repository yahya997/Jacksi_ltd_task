import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_event.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const ProductsState()) {
    on<ChangeCategoryIndex>(_changeCategoryIndex);
    on<ChangeListDisplay>(_changeListDisplay);
  }

  FutureOr<void> _changeCategoryIndex(ChangeCategoryIndex event, Emitter<ProductsState> emit) {
    emit(
      state.copyWith(
        categoryIndex: event.index
      )
    );
  }

  FutureOr<void> _changeListDisplay(ChangeListDisplay event, Emitter<ProductsState> emit) {
    emit(
        state.copyWith(
            gridViewDisplay: !state.gridViewDisplay
        )
    );
  }
}
