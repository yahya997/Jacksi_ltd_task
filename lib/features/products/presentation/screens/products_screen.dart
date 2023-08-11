import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jacksi_ltd_task/core/hive/hive_controller.dart';
import 'package:jacksi_ltd_task/core/hive/product_model.dart';
import 'package:jacksi_ltd_task/core/themes/colors.dart';
import 'package:jacksi_ltd_task/core/themes/images.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_app_bar.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_text_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/screen/add_product_screen.dart';
import 'package:jacksi_ltd_task/features/products/dummydata.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_bloc.dart';
import 'package:jacksi_ltd_task/features/products/presentation/widgets/build_category_item.dart';
import 'package:jacksi_ltd_task/features/products/presentation/widgets/build_change_display_products.dart';
import 'package:jacksi_ltd_task/features/products/presentation/widgets/build_product_item_grid.dart';

import '../../../../core/services/services_locator.dart';
import '../controller/products_state.dart';
import '../widgets/build_product_item.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "المنتجات",
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const AddProductScreen()));
            },
            child: Container(
                margin: EdgeInsetsDirectional.only(end: 32.w),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: ThemeColors.border),
                    color: ThemeColors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: SvgPicture.asset(Images.addIcon)),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          CustomTextWidget(
            title: "التصنيفات",
            fontWeight: FontWeight.w500,
            size: 16,
            color: const Color(0xff3E3E68),
            paddingBottom: 9.sp,
          ),
          SizedBox(
            height: 114.sp,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    BuildCategoryItem(category: categories[index])),
          ),
          const BuildChangeDisplayProducts(),
          ValueListenableBuilder(
            valueListenable: HiveController.getProductList().listenable(),
            builder: (context, box, child) {
              final products = box.values.toList().cast<ProductModel>();
              log('products => $products');
              return BlocBuilder<ProductsBloc, ProductsState>(
                builder: (context, state) {
                  if (state.gridViewDisplay) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 170.w / 180.h,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 8),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return BuildProductItemGrid(product: products[index]);
                      },
                    );
                  } else{
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return BuildProductItem(product: products[index]);
                      },
                    );
                  }
                },
              );
            }
          )
        ],
      ),
    );
  }
}


