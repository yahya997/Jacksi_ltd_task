import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jacksi_ltd_task/core/services/services_locator.dart';
import 'package:jacksi_ltd_task/features/products/domain/entities/category_entity.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_event.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/themes/images.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../controller/products_bloc.dart';
import '../controller/products_state.dart';

class BuildCategoryItem extends StatelessWidget {
  const BuildCategoryItem({super.key, required this.category});

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            sl<ProductsBloc>().add(ChangeCategoryIndex(index: category.id));
          },
          child: Container(
            margin: const EdgeInsetsDirectional.only(end: 8),
            height: 114.sp,
            width: 96.w,
            decoration: BoxDecoration(
                color: ThemeColors.white,
                border: state.categoryIndex == category.id ? Border.all(
                  color: ThemeColors.primary,
                ) : null,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  category.image,
                  height: 66.sp,
                ),
                CustomTextWidget(
                  title: category.name,
                  size: 12,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
