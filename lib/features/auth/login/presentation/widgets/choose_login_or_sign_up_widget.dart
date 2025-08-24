import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';

class ChooseLoginOrSignUpWidget extends StatelessWidget {
  const ChooseLoginOrSignUpWidget({super.key, required this.loginOrSignUp});
  final String loginOrSignUp ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(loginOrSignUp ==
            AppStrings.login
            ? AppStrings.alreadyHaveAnAccount
            :
          AppStrings.dontHaveAnAccount,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        TextButton(onPressed: () {}, child: Text(loginOrSignUp)),
      ],
    );
  }
}