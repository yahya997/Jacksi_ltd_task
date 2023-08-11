import 'package:flutter/material.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_text_filed.dart';
import 'package:jacksi_ltd_task/core/widgets/custom_text_widget.dart';

class BuildFieldWidget extends StatelessWidget {
  const BuildFieldWidget({super.key, required this.title, required this.textEditingController});

  final String title;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          title: title,
          size: 16,
          paddingBottom: 6,
          paddingTop: 20,
        ),
        CustomTextField(
          hint: title,
          controller: textEditingController,
        )
      ],
    );
  }
}
