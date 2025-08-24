import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class TermsAndPolicyWidget extends StatelessWidget {
  const TermsAndPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return               Center(
      child: RichText(text: TextSpan(
        text: 'By signing up, you agree to our\n',
        style: Theme.of(context).textTheme.headlineSmall,
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                decoration: TextDecoration.underline,color: AppColors.primary
            ),
          ),
          TextSpan(
            text: ' and ',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                decoration: TextDecoration.underline,color:AppColors.primary
            ),
          ),
        ],
      )),
    )
    ;
  }
}
