import 'package:flutter/material.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/reusable_componants/custom_service_btn_widget.dart';
import '../../../taps/profile_tap/domain/entity/profile_tap_enity.dart';

class ContactUsBodyWidget extends StatelessWidget {
   ContactUsBodyWidget({super.key});
List<ProfileTapEntity> contactsMethodsList = [
  ProfileTapEntity(title: 'Customer Service', icon: AppIcons.customerService,route: ''),
    ProfileTapEntity(title: 'Web Site', icon: AppIcons.webSite,route: ''),
    ProfileTapEntity(title: 'Whatsapp', icon: AppIcons.whtasapp,route: ''),
    ProfileTapEntity(title: 'Facebook', icon: AppIcons.facebook,route: ''),
    ProfileTapEntity(title: 'instagram', icon: AppIcons.instagram,route: ''),
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context, index) => CustomServiceBtn(title: contactsMethodsList[index].title, icon: contactsMethodsList[index].icon, route:contactsMethodsList[index].route ,),
        itemCount: contactsMethodsList.length);
  }
}
