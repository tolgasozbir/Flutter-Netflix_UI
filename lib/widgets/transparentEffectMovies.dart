import 'package:flutter/material.dart';

class TransparentEffectMovies extends StatelessWidget {
  final double w;
  final double h;
  TransparentEffectMovies({required this.w,required this.h, Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black,Colors.transparent],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          )
        ),
      );
  }
}