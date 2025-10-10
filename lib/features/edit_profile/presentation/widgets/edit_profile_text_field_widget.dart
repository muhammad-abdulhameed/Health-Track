import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class EditProfileTextFieldWidget extends StatefulWidget {
  const EditProfileTextFieldWidget({super.key, required this.fieldTitle});
final String fieldTitle;
  @override
  State<EditProfileTextFieldWidget> createState() =>
      _EditProfileTextFieldWidgetState();
}

class _EditProfileTextFieldWidgetState
    extends State<EditProfileTextFieldWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: "Jane Doe");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        left: AppDimensions.padding24.w,
        top: AppDimensions.padding24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.fieldTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: AppDimensions.sizedBox6.h),
          TextFormField(
            controller: controller,
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
            style: Theme.of(context).textTheme.displayMedium,
            cursorHeight: AppDimensions.fontSize20.h,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              constraints: BoxConstraints(
                minHeight: AppDimensions.constrainedBoxHeight45.h,
                maxHeight: AppDimensions.constrainedBoxHeight45.h,
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              fillColor: AppColors.surface,
              filled: true,
              contentPadding: REdgeInsets.symmetric(
                horizontal: AppDimensions.padding32.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
