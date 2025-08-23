import 'package:flutter/material.dart';

typedef OnPressed = void Function();
class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({super.key,required this.text, required this.onPressed});
  final String text;
  final OnPressed onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton( style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed, child: Text(text,style: Theme.of(context).textTheme.bodyLarge,));
  }
}
