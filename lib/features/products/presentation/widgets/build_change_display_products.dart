import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jacksi_ltd_task/core/services/services_locator.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_bloc.dart';
import 'package:jacksi_ltd_task/features/products/presentation/controller/products_event.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/themes/images.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BuildChangeDisplayProducts extends StatelessWidget {
  const BuildChangeDisplayProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        sl<ProductsBloc>().add(ChangeListDisplay());
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(top: 14,bottom: 16),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: ThemeColors.white,
              borderRadius: BorderRadius.circular(9)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Images.elementEqualIcon),
              const CustomTextWidget(
                title: "تغيير عرض المنتجات الى افقي",
                size: 12,
                color: ThemeColors.redFF4155,
              )
            ],
          ),
        ),
      ),
    );
  }
}
