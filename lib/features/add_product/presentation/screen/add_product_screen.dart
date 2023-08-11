import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:jacksi_ltd_task/core/hive/product_model.dart';
import 'package:jacksi_ltd_task/core/widgets/build_drop_down_button_widget.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_app_bar.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_button_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_bloc.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_event.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/widgets/build_field_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/widgets/product_images_widget.dart';
import 'package:jacksi_ltd_task/features/products/domain/entities/category_entity.dart';
import 'package:jacksi_ltd_task/features/products/dummydata.dart';

import '../../../../core/services/services_locator.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController storeName = TextEditingController();

  CategoryEntity? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "اضافة منتجات",
        iconBack: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const ProductImagesWidget(),
          BuildFieldWidget(
            title: "اسم المنتج",
            textEditingController: productName,
          ),
          BuildFieldWidget(
            title: "اسم المتجر",
            textEditingController: storeName,
          ),
          BuildFieldWidget(
            title: "السعر",
            textEditingController: productPrice,
          ),
          BuildDropDownButtonWidget<CategoryEntity>(
            title: 'التصنيف',
            hint: 'اسم التصنيف',
            onChanged: (value) {
              setState(() {
                category = value as CategoryEntity;
              });
            },
            list: categories,
            buildItem: (p0) {
              return Text(p0.name);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtonWidget(
            text: "اضافه المنتج",
            textSize: 18,
            onPressed: () async {
              if(productName.text.isNotEmpty){
                sl<AddProductBloc>().add(AddNewProduct(
                    productName: productName.text,
                    productPrice: productPrice.text,
                    storeName: storeName.text,
                    category: '${category?.id}'));
              }
            },
          )
        ],
      ),
    );
  }
}
