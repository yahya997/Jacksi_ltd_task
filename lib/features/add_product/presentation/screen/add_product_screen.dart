import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jacksi_ltd_task/core/widgets/build_drop_down_button_widget.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_app_bar.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_button_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_bloc.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/widgets/build_field_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/widgets/product_images_widget.dart';

import '../../../../core/services/services_locator.dart';


class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

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

          const BuildFieldWidget(title: "اسم المنتج"),
          const BuildFieldWidget(title: "اسم المتجر"),
          const BuildFieldWidget(title: "السعر"),

          BuildDropDownButtonWidget<String>(
            title: 'التصنيف',
            hint: 'اسم التصنيف',
            onChanged: (value) {

            },
            list: const [
              'تصنيف١',
              'تصنيف٢',
              'تصنيف٣',
            ],
            buildItem: (p0) {
              return Text(p0);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomButtonWidget(
            text: "اضافه المنتج",
            textSize: 18,
          )
        ],
      ),
    );
  }
}
