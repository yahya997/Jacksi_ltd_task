import 'package:get_it/get_it.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_bloc.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton(() => AddProductBloc());
    sl.registerLazySingleton(() => ProductsBloc());
  }
}
