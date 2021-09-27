import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalIconButton extends StatelessWidget {

  final String iconText;
  final IconData icon;

  VerticalIconButton({
    required this.iconText,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,color: Colors.white,size: 32,),
        SizedBox(height: 2,),
        Text(iconText,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,)),
      ],
    );
  }
}