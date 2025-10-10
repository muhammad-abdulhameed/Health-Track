import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../core/constants/app_colors.dart';

class SettingsSwitchWidget extends StatefulWidget {
   SettingsSwitchWidget({super.key, required this.title,});
  final String title;
   bool isSwitched = true;

  @override
  State<SettingsSwitchWidget> createState() => _SettingsSwitchWidgetState();
}

class _SettingsSwitchWidgetState extends State<SettingsSwitchWidget> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title,style: Theme.of(context).textTheme.displayMedium,),
        Spacer(),
        SizedBox(height: 28.h,
            child: FlutterSwitch(padding :2,onToggle: (val){
              setState(() {
                widget.isSwitched=val;
              });

            },value:widget.isSwitched,activeColor: AppColors.primary,width: 65.w,))
      ],
    );
  }
}
