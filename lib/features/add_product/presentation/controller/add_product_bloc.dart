import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_state.dart';
import 'add_product_event.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc() : super(const AddProductState()) {
    on<AddImageEvent>(_addImage);
    on<RemoveImageEvent>(_removeImage);
  }

  FutureOr<void> _addImage(AddImageEvent event, Emitter<AddProductState> emit) async {
    List<Uint8List> list = [];
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    log('image => ${image?.path}');
    if (image != null) {
      list.addAll(state.images);
      list.add(await image.readAsBytes());
      log('list => $list');
    }
    emit(state.copyWith(images: list));
  }



  FutureOr<void> _removeImage(RemoveImageEvent event, Emitter<AddProductState> emit) async{
    List<Uint8List> list = [];
    list.addAll(state.images);
    list.remove(event.image);
    log('list2 => $list');
    emit(
      state.copyWith(
        images: list
      )
    );
  }

}
