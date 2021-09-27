import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_netflix_ui/data/assets.dart';

class CustomAppBar2 extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar2({Key? key,this.scrollOffset = 0.0,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth(double value)=> MediaQuery.of(context).size.width*value;
    // ignore: unused_element
    double screenHeight(double value) => MediaQuery.of(context).size.height*value;

    return Container(
      color: Colors.transparent,//Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
              child: Row(
                children: [
                  Expanded(child: Image.asset(Assets.netflixLogo0, width: screenWidth(0.1),)),
                  Spacer(flex: 8,),
                  Expanded(flex: 2, child: Icon(Icons.search,size: screenWidth(0.1),color: Colors.white,)),
                  Expanded(child: Image.asset(Assets.userIcon, width: screenWidth(0.1),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

