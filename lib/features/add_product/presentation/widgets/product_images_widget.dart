import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_button_widget.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_bloc.dart';
import 'package:jacksi_ltd_task/features/add_product/presentation/controller/add_product_event.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/images.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../controller/add_product_state.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductImagesWidget extends StatelessWidget {
  const ProductImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          title: "صور المنتج",
          size: 16,
          color: Colors.black,
          paddingBottom: 13.sp,
        ),
        BlocBuilder<AddProductBloc, AddProductState>(
          builder: (context, state) {
            return SizedBox(
              height: 100.sp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  if (index < state.images.length) {
                    return Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 4.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SizedBox(
                              width: 96.w,
                              height: 100.sp,
                              child: Image.memory(
                                state.images[index],
                                width: 96.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 6,
                            top: 6,
                            child: GestureDetector(
                              onTap: ()=> sl<AddProductBloc>().add(RemoveImageEvent(image: state.images[index])),
                              child: SvgPicture.asset(Images.forbidden),
                            ))
                      ],
                    );
                  }else{
                   return Container(
                     width: 96.w,
                     clipBehavior: Clip.hardEdge,
                     margin: EdgeInsetsDirectional.only(end: 4.w),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: ThemeColors.border),
                         borderRadius: BorderRadius.circular(5)),
                   );
                  }
                },
              ),
            );
          },
        ),
        SizedBox(height: 15.sp),
        CustomButtonWidget(
          text: "اضغط لاضافة الصور",
          icon: Images.addsquareIcon,
          fontWeight: FontWeight.w300,
          onPressed: () => sl<AddProductBloc>().add(AddImageEvent()),
        )
      ],
    );
  }
}
