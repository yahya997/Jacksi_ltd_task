import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/hive/product_model.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/images.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BuildProductItem extends StatelessWidget {
  const BuildProductItem({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.sp,
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          product.images?.isEmpty ?? false || product.images?[0] == null
              ? Image.asset(
                  Images.img4,
                  width: 115.w,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.memory(
                    product.images![0],
                    width: 115.w,
                    height: 115.sp,
                    fit: BoxFit.cover,
                  ),
                ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  title: product.productName,
                  size: 18,
                  fontWeight: FontWeight.w500,
                ),
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
            ),
          )
        ],
      ),
    );
  }
}
