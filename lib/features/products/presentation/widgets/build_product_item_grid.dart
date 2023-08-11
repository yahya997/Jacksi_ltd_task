import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/hive/product_model.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/images.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BuildProductItemGrid extends StatelessWidget {
  const BuildProductItemGrid({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    log('product.images => ${product.images}');
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: product.images?.isEmpty ?? false || product.images?[0] == null
                      ? Image.asset(
                          Images.img4,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                      : Image.memory(
                          product.images![0],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )),
          const SizedBox(width: 14),
          CustomTextWidget(
            title: product.productName,
            size: 14,
            fontWeight: FontWeight.w500,
            paddingTop: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextWidget(
                    title: product.productPrice,
                    size: 20,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.primary,
                  ),
                  const CustomTextWidget(
                    title: "دولار",
                    size: 12,
                    color: Color(0xff3E3E68),
                  ),
                ],
              ),
              Container(
                height: 30.sp,
                width: 65.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8)),
                child: CustomTextWidget(
                  title: product.storeName,
                  size: 10,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffA1A1A1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
