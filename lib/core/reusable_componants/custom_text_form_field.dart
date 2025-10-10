import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_strings.dart';

class CustomTextFormField extends StatefulWidget {
   CustomTextFormField({super.key,required this.hintText, this.textInputType, this.obscureText=false});
  final String? hintText;
   bool obscureText;
   TextInputType? textInputType;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ignorePointers: false,
      /*onTapOutside: (_) {
        FocusScope.of(context).unfocus();

      },*/
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
        contentPadding:  REdgeInsets.symmetric(
          vertical: 0,
          horizontal: 15,
        ),
        suffixIcon: widget.hintText==AppStrings.passwordObs? widget.obscureText?  IconButton( onPressed: () {
          setState(() {
            widget.obscureText=!widget.obscureText;
          });
        }, icon:Icon( Icons.visibility_off_outlined,color: Color(
            0x80000000))):IconButton( onPressed: () {
          setState(() {
            widget.obscureText=!widget.obscureText;
          });
        }, icon:Icon( Icons.visibility_outlined,color: Color(
            0x80000000))):null,
        hintText: widget.hintText,
        hintStyle:  Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w100,color:AppColors.primary
        ),
      ),
      style:widget.hintText==AppStrings.passwordObs? TextStyle(height: 2.2.h):null,
      obscureText: widget.obscureText,obscuringCharacter: "*",
    );
  }
}
/*  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radius12),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radius12),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radius12),
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radius12),
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radius12),
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 2.0),
                  ),*/
