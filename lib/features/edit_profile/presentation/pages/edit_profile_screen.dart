import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../../core/reusable_componants/custom_text_form_field.dart';
import '../../../../core/reusable_componants/gradient_container_widget.dart';
import '../../../../core/reusable_componants/profile_image_widget.dart';
import '../../../taps/profile_tap/presentation/widgets/profile_info_card_widget.dart';
import '../../../taps/profile_tap/presentation/widgets/profile_tap_widget.dart';
import '../widgets/edit_profile_text_field_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.profile,),
      body: Column(
          children: [
            GradientContainerWidget(child: ProfileImageWidget(enableEdit: true,), ),
            EditProfileTextFieldWidget(fieldTitle: AppStrings.fullName,),
            EditProfileTextFieldWidget(fieldTitle: AppStrings.phone,),
            EditProfileTextFieldWidget(fieldTitle: AppStrings.email,),
            EditProfileTextFieldWidget(fieldTitle: AppStrings.dateOfBirth,),
          ]

      ),
    );;
  }
}
