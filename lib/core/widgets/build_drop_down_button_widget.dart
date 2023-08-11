import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../themes/colors.dart';
import '../themes/images.dart';
import 'custom_text_widget.dart';

class BuildDropDownButtonWidget<T> extends StatelessWidget {
  final T? selected;
  final String? title;
  final String? hint;
  final List<T>? list;
  final bool loading;
  final Function(T)? buildItem;
  final ValueChanged<Object?>? onChanged;

  const BuildDropDownButtonWidget(
      {this.list,
      this.selected,
      this.hint,
      this.onChanged,
      this.title,
      this.buildItem,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                title: title ?? '',
                size: 14,
                paddingTop: 20,
                paddingBottom: 15,
                color: ThemeColors.black,
                fontWeight: FontWeight.w500,
              ),
              Container(
                height: 60.sp,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: ThemeColors.border),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<T>(
                    hint: CustomTextWidget(
                      title: hint ?? '',
                      size: 12,
                      color: const Color(0xff5973DE),
                    ),
                    iconEnabledColor: ThemeColors.primary,
                    iconDisabledColor: const Color(0xff3f3e3e),
                    icon: SvgPicture.asset(Images.arrowCircleDownIcon),
                    dropdownColor: Colors.white,
                    items: list?.map((dynamic item) {
                          return DropdownMenuItem<T>(
                              value: item, child: buildItem!(item));
                        }).toList() ??
                        [],
                    value: selected,
                    onChanged: onChanged,
                  ),
                ),
              ),
            ],
          );
  }
}
