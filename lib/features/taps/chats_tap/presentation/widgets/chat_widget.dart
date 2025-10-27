import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/routes/app_routes.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
GoRouter.of(context).push(AppRoutes.chatScreen);
      },
      contentPadding: EdgeInsets.zero,
        leading: Image.asset(AppImages.doctor1),
        title: FittedBox(child: Text('Dr. John Doe',style: Theme.of(context).textTheme.labelLarge,)),
        subtitle: Text('Hello, how can I help you?',style: Theme.of(context).textTheme.headlineSmall,maxLines: 1,overflow: TextOverflow.ellipsis,),
        trailing: Text('2:30 PM')
    );
  }
}
