import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_massege_widget.dart';

class ChatsListWidget extends StatelessWidget {
   ChatsListWidget({super.key});
  bool isSender = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

itemCount: 11,
      itemBuilder: (context, index) {
        isSender=!isSender;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: isSender
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Flexible(child: ChatMassageWidget(isSender: isSender,isRecord: index%7==0,)),

            Align(
              alignment: isSender
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(
                '2:30 PM',
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: isSender
                    ? TextAlign.right
                    : TextAlign.left,
              ),
            ),
          ],
        );
      },
    );
  }
}
