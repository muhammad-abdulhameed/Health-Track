import 'package:flutter/cupertino.dart';

import '../constants/app_colors.dart';

class CustomShader extends StatelessWidget {
  const CustomShader({super.key, required this.child});
   final Widget child;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(shaderCallback: (bounds) {
      return const LinearGradient(colors: AppColors.mainGradient,end: Alignment.bottomCenter,begin: Alignment.topCenter,).createShader(bounds);
    },
      child: child,blendMode: BlendMode.srcIn,

    );
  }
}
